import 'package:auto_route/auto_route.dart';
import 'package:untitled/screen/map_screen.dart';

import 'app_router.gr.dart';
@AutoRouterConfig()
class AppRouter extends $AppRouter{
  @override
  List<AutoRoute> get routes =>[
    AutoRoute(page: HomeRoute.page,initial: true),
    AutoRoute(page: CargoListRoute.page),
    AutoRoute(page: MapRoute.page),

  ];

}