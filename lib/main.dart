import 'package:flutter/material.dart';
import 'package:untitled/routes/app_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppRouter appRouter=AppRouter();

    return MaterialApp.router(
      routerConfig:appRouter.config() ,
    ) ;
  }
}

