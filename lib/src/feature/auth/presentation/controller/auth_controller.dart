import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_provider/src/feature/auth/data/repository/auth_repository_impl.dart';
import 'package:riverpod_provider/src/feature/home/presentation/page/home_page.dart';

part 'auth_controller.g.dart';

enum StatusLogin { initial, isLoading }

@riverpod
class AuthController extends _$AuthController {
  @override
  StatusLogin build() => StatusLogin.initial;

  Future login(BuildContext context, email, password) async {
    state = StatusLogin.isLoading;
    final result = await AuthRepositoryImpl().login(email, password);
    result.fold(
      (l) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Login Failed'),
          backgroundColor: Colors.red,
        ));
        state = StatusLogin.initial;
      },
      (r) => context.pushReplacementNamed(HomePage.routerName),
    );
  }
}
