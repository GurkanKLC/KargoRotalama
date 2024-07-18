import 'dart:async';
import 'dart:convert';
import 'package:latlong2/latlong.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:untitled/models/current_route.dart';
import 'package:untitled/models/current_routes.dart';
import 'package:geolocator/geolocator.dart';
part 'cargo_list_business.g.dart';
@riverpod
class MapControl extends _$MapControl{

  @override
  int build() {
    return 0;
  }

  void setState(int value){
    state=value;
  }

}


@riverpod
class ActivePoints extends _$ActivePoints{
  @override
  List<LatLng> build() {

    return [];
  }

}

@riverpod
class ActiveCurrentRoute extends _$ActiveCurrentRoute {
  @override
  CurrentRoute build() {
    return const CurrentRoute();
  }

  void setState(CurrentRoute route) {
    state = route;
  }

  void getPoints() {
    if(  super.ref.watch(activePointsProvider).isNotEmpty){
      super.ref.watch(activePointsProvider).clear();

    }
    if(state.locations!=null){
      for (var element in state.locations!) {
        if(super.ref.watch(activePointsProvider).contains(LatLng(element.targetLatitude!, element.targetLongitude!) )==false && element.active==true){
          super.ref.watch(activePointsProvider).add(LatLng(element.targetLatitude!, element.targetLongitude!));

        }

      }

    }
  }

}

@riverpod
class CurrentRoutesStateNotifier extends _$CurrentRoutesStateNotifier {
  @override
  List<CurrentRoute> build() {
    return [];
  }

  @override
  bool updateShouldNotify(
      List<CurrentRoute> previous, List<CurrentRoute> next) {
    return super.updateShouldNotify(previous, next);
  }

  @override
  List<CurrentRoute> get state => super.state;
  @override
  set state(List<CurrentRoute> value) {
    super.state = value;
  }

  void setState(List<CurrentRoute> data) {
    state = data;
  }
}

@riverpod
Future<CurrentRoutes> getCurrentRoutes(GetCurrentRoutesRef ref) async {
  final response = await Future.value(jsonEncode({
    "data": [
      {
        "routeId": "2a922474-5b72-4b42-b54c-9b93d22bf517",
        "routeName": "14:00 Seferi",
        "packageCount": 5,
        "routeStartTime": "2024-15-07T14:00:00Z",
        "estimatedDuration": 23,
        "totalDistance": 10,
        "active": true,
        "locations": [
          {
            "recipient": "Joe Doe",
            "phone": "+1 555 555 55 55",
            "address":
                "Barbaros Hayrettin Paşa Sk 37, Barbaros, 34746 Ataşehir/İstanbul",
            "targetLatitude": 40.9938921658778,
            "targetLongitude": 29.094303519891692,
            "packageId": "c15bec8f-5da6-4793-9eb4-7791879de1b4",
            "active": true,
            "packageType": "Box"
          },
          {
            "recipient": "Mary Jane",
            "phone": "+1 444 444 44 44",
            "address": "Sütçü Yolu Cd. No:4, Barbaros, 34746 Ataşehir/İstanbul",
            "targetLatitude": 40.985923345310844,
            "targetLongitude": 29.09709301712811,
            "packageId": "5533ae3e-40bf-45bd-be69-a4bebb07fac6",
            "active": true,
            "packageType": "Letter"
          },
          {
            "recipient": "John Smith",
            "phone": "+1 333 333 33 33",
            "address":
                "Atatürk Cd. No:5, Küçükbakkalköy, 34750 Ataşehir/İstanbul",
            "targetLatitude": 40.9876543210987,
            "targetLongitude": 29.1056789012345,
            "packageId": "a1234b56-c789-0123-4567-8901d234efgh",
            "active": true,
            "packageType": "Box"
          },
          {
            "recipient": "Jane Doe",
            "phone": "+1 222 222 22 22",
            "address": "İnönü Cd. No:6, Kayışdağı, 34755 Ataşehir/İstanbul",
            "targetLatitude": 40.980123456789,
            "targetLongitude": 29.110987654321,
            "packageId": "b2345c67-d890-1234-5678-9012e345fghj",
            "active": true,
            "packageType": "Document"
          },
          {
            "recipient": "Alice Johnson",
            "phone": "+1 111 111 11 11",
            "address":
                "Yeditepe Üni. İnan Kıraç Cd., Kayışdağı, 34755 Ataşehir/İstanbul",
            "targetLatitude": 40.981234567890,
            "targetLongitude": 29.115678901234,
            "packageId": "c3456d78-e901-2345-6789-0123f456ghij",
            "active": true,
            "packageType": "Parcel"
          }
        ]
      },
      {
        "routeId": "2d2c61f3-c87b-4725-8448-34178d62af5e",
        "routeName": "15:00 Seferi",
        "packageCount": 4,
        "routeStartTime": "2024-15-07T15:00:00Z",
        "estimatedDuration": 20,
        "totalDistance": 7,
        "active": true,
        "locations": [
          {
            "recipient": "Chase Adkins",
            "phone": "+1 (982) 568-2831",
            "address":
                "Tunuslu Mahmut Paşa Cd. 13-9, Burhaniye, 34676 Üsküdar/İstanbul",
            "targetLatitude": 41.028440071654316,
            "targetLongitude": 29.048551417661695,
            "packageId": "fcd83b5a-d4eb-4f5d-a35b-a35f8c75c60e",
            "active": true,
            "packageType": "Box"
          },
          {
            "recipient": "Trevino Levy",
            "phone": "+1 (954) 408-2833",
            "address":
                "Güzeldere Alt Cd. 36-58, Küplüce, 34676 Üsküdar/İstanbul",
            "targetLatitude": 41.03562674147434,
            "targetLongitude": 29.05147449360544,
            "packageId": "7838d4a3-f622-4048-ac0a-274a9ce131f1",
            "active": true,
            "packageType": "Box"
          },
          {
            "recipient": "Rose Livingston",
            "phone": "+1 (982) 593-2416",
            "address":
                "Mehmet Akif Ersoy Cd. 147-139, Mehmet Akif Ersoy, Üsküdar/İstanbul",
            "targetLatitude": 41.03813100269007,
            "targetLongitude": 29.066847707828078,
            "packageId": "0a4d8f23-d08e-4f2d-b61f-6d5f4b7596ef",
            "active": true,
            "packageType": "Parcel"
          },
          {
            "recipient": "Giles Sykes",
            "phone": "+1 (807) 558-2462",
            "address": "Gelin Sk. 2-12, Güzeltepe, 34680 Üsküdar/İstanbul",
            "targetLatitude": 41.04692238275045,
            "targetLongitude": 29.073379519504837,
            "packageId": "4d8abb9d-8965-4b3b-9a6d-7deb20b52d39",
            "active": true,
            "packageType": "Letter"
          }
        ]
      }
    ]
  }));
  CurrentRoutes result =
      CurrentRoutes.fromJsonByCalculate(jsonDecode(response));
  ref.watch(currentRoutesStateNotifierProvider.notifier).setState(result.data!);

  return result;
}





final locationStreamProvider = StreamProvider<Position>((ref) async* {
  bool serviceEnabled;
  LocationPermission permission;

  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    throw Exception('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      throw Exception('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    throw Exception('Location permissions are permanently denied, we cannot request permissions.');
  }

  yield* Geolocator.getPositionStream();
});