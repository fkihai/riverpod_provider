import 'package:flutter/material.dart';
import 'package:riverpod_provider/src/core/router/router_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: routerProvider,
    );
  }
}
