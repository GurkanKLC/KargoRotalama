import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:untitled/business/cargo_list_business.dart';
import 'package:untitled/models/current_route.dart';
import 'package:untitled/routes/app_router.gr.dart';

@RoutePage()
class CargoListScreen extends ConsumerWidget {
  const CargoListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seferler'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            AutoRouter.of(context).push(const HomeRoute());
          },
        ),
      ),
      body: ref.watch(getCurrentRoutesProvider).when(
          data: (value) {
            int size = ref
                .watch(currentRoutesStateNotifierProvider)
                .where((x) => x.active == true)
                .length;
            return Column(
              children: [
                Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Card(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(0),
                                right: Radius.circular(10))),
                        child: SizedBox(
                          width: 150,
                          height: 25,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 5,
                                    color: Colors.red,
                                    child: const SizedBox.shrink(),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "Gün Detayı",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const Text(
                                'Yol',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              const Icon(Icons.route, color: Colors.blue),
                              const SizedBox(height: 8.0),
                              Text(
                                '${value.totalRoutesDistance}km',
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              const Text(
                                'Süre',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              const Icon(Icons.access_time_filled,
                                  color: Colors.deepOrange),
                              const SizedBox(height: 8.0),
                              Text(
                                '${value.totalRoutesTime}dk',
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              const Text(
                                'Paket',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              const Icon(Icons.backpack_outlined,
                                  color: Colors.green),
                              const SizedBox(height: 8.0),
                              Text(
                                '${value.totalPackageCount} adet',
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Divider(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Card(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(0),
                            right: Radius.circular(10))),
                    child: SizedBox(
                      width: 150,
                      height: 25,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 25,
                                width: 5,
                                color: Colors.red,
                                child: const SizedBox.shrink(),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "Seferler",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                if (size > 0)
                  Expanded(
                    child: ListView.builder(
                      itemCount: size,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 4.0,
                          margin: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 16.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      ref
                                          .watch(currentRoutesStateNotifierProvider)[
                                              index]
                                          .routeName
                                          .toString(),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                        "Sefer Saati ${DateFormat('kk:mm:ss').format(DateTime.parse(ref.watch(currentRoutesStateNotifierProvider)[index].routeStartTime.toString()).toUtc())}")
                                  ],
                                ),
                              ),
                              ListTile(
                                subtitle: GestureDetector(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) => ListCardDialog(rota: ref.watch(currentRoutesStateNotifierProvider)[index],),
                                    );
                                  },
                                  behavior: HitTestBehavior.translucent,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          const Text(
                                            'Yol',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const Icon(Icons.route,
                                              color: Colors.blue),
                                          const SizedBox(height: 8.0),
                                          Text(
                                            '${ref.watch(currentRoutesStateNotifierProvider)[index].totalDistance}km',
                                            style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          const Text(
                                            'Süre',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const Icon(Icons.access_time_filled,
                                              color: Colors.deepOrange),
                                          const SizedBox(height: 8.0),
                                          Text(
                                            '${ref.watch(currentRoutesStateNotifierProvider)[index].estimatedDuration}dk',
                                            style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          const Text(
                                            'Paket',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const Icon(Icons.backpack_outlined,
                                              color: Colors.green),
                                          const SizedBox(height: 8.0),
                                          Text(
                                            '${ref.watch(currentRoutesStateNotifierProvider)[index].packageCount} adet',
                                            style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  onLongPress: () {
                                    makePassiveRoute(context, index, ref);
                                  },
                                ),
                                trailing: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    IconButton(
                                      onPressed: () {

                                        ref.watch(activeCurrentRouteProvider.notifier).setState(ref.watch(currentRoutesStateNotifierProvider)[index]);
                                        AutoRouter.of(context).push( const MapRoute());
                                      },
                                      icon: const Icon(Icons.play_arrow),
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        backgroundColor: Colors.blue,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                else
                  const Text("Sefer Bulunmuyor")
              ],
            );
          },
          error: (err, stck) {
            return Text('Error: $err');
          },
          loading: () => const CircularProgressIndicator()),
    );
  }

  void makePassiveRoute(BuildContext context, int index, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Sefer İptal'),
          content: const Text('Seferi iptal ettiğinizi onaylayınız!'),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('İptal'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, foregroundColor: Colors.white),
              onPressed: () {

                  List<CurrentRoute> newState = ref.read(currentRoutesStateNotifierProvider);
                  newState.removeAt(index);
                  ref.invalidate(currentRoutesStateNotifierProvider);
                  ref
                      .watch(currentRoutesStateNotifierProvider.notifier)
                      .setState(newState);

                  Navigator.pop(context);

              },
              child: const Text('Onayla'),
            ),
          ],
        );
      },
    );
  }
}
class ListCardDialog extends StatelessWidget {
  final CurrentRoute rota;
  ListCardDialog({super.key,required this.rota});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height*0.8,
        width: 300.0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Sefer Noktaları',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: rota.locations!.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Column(
                        children: [
                          Row(
                            children: [
                              Text(rota.locations![index].packageType.toString(),style: const TextStyle(fontSize: 12),),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(rota.locations![index].recipient.toString(),style: const TextStyle(fontSize: 12),),
                              Text(rota.locations![index].phone.toString(),style: const TextStyle(fontSize: 12),)
                            ],
                          ),

                        ],
                      ),
                      subtitle: Column(
                        children: [
                          const Divider(),
                          Text(rota.locations![index].address.toString())
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Kapat'),
            ),
          ],
        ),
      ),
    );
  }
}
