import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_provider/src/my_app.dart';

void main() {
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}
