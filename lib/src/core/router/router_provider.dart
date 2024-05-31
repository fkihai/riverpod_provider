import 'package:go_router/go_router.dart';
import 'package:riverpod_provider/src/feature/auth/presentation/page/login_page.dart';
import 'package:riverpod_provider/src/feature/detail/presentation/page/detail_page.dart';
import 'package:riverpod_provider/src/feature/home/presentation/page/home_page.dart';

final GoRouter routerProvider = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      name: LoginPage.routerName,
      pageBuilder: (context, state) => NoTransitionPage(
        child: LoginPage(),
      ),
    ),
    GoRoute(
      path: '/',
      name: HomePage.routerName,
      pageBuilder: (context, state) => NoTransitionPage(child: HomePage()),
      routes: [
        GoRoute(
          path: 'detail',
          name: DetailPage.routerName,
          pageBuilder: (context, state) => const NoTransitionPage(
            child: DetailPage(),
          ),
        ),
      ],
    )
  ],
);
