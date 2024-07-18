import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latlong2/latlong.dart';
import 'package:untitled/business/cargo_list_business.dart';
import 'package:geolocator/geolocator.dart';
import 'package:untitled/models/current_route.dart';

@RoutePage()
class MapScreen extends ConsumerStatefulWidget {
  const MapScreen({super.key});

  @override
  MapScreenState createState() => MapScreenState();
}

class MapScreenState extends ConsumerState<MapScreen> {
  final MapController _mapController = MapController();
  bool _isMapInitialized = false;
  Position? beforePosition;
  bool checkBeforePosition = true;
  @override
  Widget build(BuildContext context) {
    final locationStream = ref.watch(locationStreamProvider);
    ref.watch(activeCurrentRouteProvider.notifier).getPoints();

    return Scaffold(
      appBar: AppBar(title: const Text('Rota')),
      body: locationStream.when(
        data: (position) {
          if (checkBeforePosition == true) {
            beforePosition = position;
            checkBeforePosition = false;
          }
          final userLocation = LatLng(position.latitude, position.longitude);
          if (_isMapInitialized) {
            if (checkBeforePosition == false) {
              if (ref.watch(mapControlProvider) == 0) {
                if (beforePosition!.latitude != position.latitude && beforePosition!.longitude != position.longitude) {
                  _mapController.move(userLocation, 15.0);
                  beforePosition = position;
                }
              } else if (ref.watch(mapControlProvider) == 1) {
                _mapController.move(userLocation, 15.0);
              }
            }
          } // Zoom
          List<Marker> markerLocations = [];
          for (int index = 0;
              index <
                  [
                    ...[userLocation],
                    ...ref.watch(activePointsProvider)
                  ].length;
              index++) {
            if (index != 0) {
              markerLocations.add(Marker(
                width: 80.0,
                height: 80.0,
                rotate: true,
                alignment: const Alignment(0, -0.35),
                point: [
                  ...[userLocation],
                  ...ref.watch(activePointsProvider)
                ][index],
                child: IconButton(
                  onPressed: () {
                    if (ref.watch(activeCurrentRouteProvider).locations != null && ref.watch(activeCurrentRouteProvider).locations!.isNotEmpty) {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          actionsAlignment: MainAxisAlignment.spaceBetween,
                          contentPadding: const EdgeInsets.all(4),
                          scrollable: true,
                          title: const Text('Detay'),
                          content: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Card(
                                      child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "ID: ${ref.watch(activeCurrentRouteProvider).locations![index - 1].packageId}",
                                      style: const TextStyle(fontSize: 16),
                                    ),
                                  )),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: SizedBox(
                                  height: 50,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        ref.watch(activeCurrentRouteProvider).locations![index - 1].recipient.toString(),
                                        style: const TextStyle(fontSize: 16),
                                      ),
                                      Text(ref.watch(activeCurrentRouteProvider).locations![index - 1].phone.toString(), style: const TextStyle(fontSize: 16)),
                                    ],
                                  ),
                                ),
                              ),
                              const Divider(),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 300,
                                    child: Column(
                                      children: [
                                        Text(
                                          ref.watch(activeCurrentRouteProvider).locations![index - 1].address.toString(),
                                          style: const TextStyle(fontSize: 16),
                                          overflow: TextOverflow.visible,
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          actions: [
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  foregroundColor: Colors.red,
                                  shape: RoundedRectangleBorder(side: const BorderSide(color: Colors.red, width: 2), borderRadius: BorderRadius.circular(20))),
                              onPressed: () {
                                CurrentRoute newState = ref.read(activeCurrentRouteProvider);
                                newState.locations!.remove(ref.watch(activeCurrentRouteProvider).locations![index - 1]);
                                //.read(mapMarkersProvider).removeWhere((test)=>test.point==LatLng(ref.watch(activeCurrentRouteProvider).locations![index].targetLatitude!,ref.watch(activeCurrentRouteProvider).locations![index].targetLongitude!));
                                ref.invalidate(activeCurrentRouteProvider);
                                ref.watch(activeCurrentRouteProvider.notifier).setState(newState);
                                Navigator.pop(context);
                                if (ref.watch(activeCurrentRouteProvider).locations!.isEmpty) {
                                  List<CurrentRoute> newState = ref.read(currentRoutesStateNotifierProvider);
                                  newState.remove(ref.read(activeCurrentRouteProvider));
                                  ref.invalidate(currentRoutesStateNotifierProvider);
                                  ref.watch(currentRoutesStateNotifierProvider.notifier).setState(newState);
                                }
                              },
                              child: const Text('Çıkart'),
                            ),
                            OutlinedButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: const Text('Kapat'),
                            ),
                          ],
                        ),
                      );
                    }

                    //ref.watch(locationInfoProvider.notifier).setState(element);
                  },
                  icon: const Icon(Icons.location_on, size: 40),
                ),
              ));
            } else {
              markerLocations.add(Marker(
                width: 80.0,
                height: 80.0,
                rotate: true,
                alignment: const Alignment(0, -0.35),
                point: [
                  ...[userLocation],
                  ...ref.watch(activePointsProvider)
                ][index],
                child: const Icon(
                  Icons.accessibility,
                  size: 40,
                  color: Colors.red,
                ),
              ));
            }
          }

          return Stack(
            children: [
              FlutterMap(
                mapController: _mapController,
                options: MapOptions(
                  keepAlive: true,
                  onTap: (tapPosition, latLng) {
                    ref.watch(mapControlProvider.notifier).setState(0);
                  },
                  onMapReady: () {
                    _isMapInitialized = true;
                  },
                  initialCenter: userLocation,
                  initialZoom: 15.0,
                ),
                children: [
                  TileLayer(
                    urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  ),
                  PolylineLayer(
                    polylines: [
                      Polyline(
                        points: [
                          ...[userLocation],
                          ...ref.watch(activePointsProvider)
                        ],
                        strokeWidth: 4.0,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                  MarkerLayer(
                    markers: markerLocations,
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white, foregroundColor: Colors.black54, side: const BorderSide(color: Colors.blue, width: 3)),
                    onPressed: () {
                      ref.watch(mapControlProvider.notifier).setState(1);
                    },
                    child: const Text("Ortala"),
                  ),
                ),
              )
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
