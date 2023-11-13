
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../view/landing_view.dart';
import 'route_paths.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static GlobalKey<NavigatorState> get rootNavigatorKey => _rootNavigatorKey;

  static final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: RoutePath.root,
        builder: (context, state) => const LandingView(),
      ),
    ],
    initialLocation: RoutePath.root,
    navigatorKey: _rootNavigatorKey,
  );

}