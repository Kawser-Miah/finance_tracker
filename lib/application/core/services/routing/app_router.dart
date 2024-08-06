import 'package:finance_tracker/application/core/services/routing/route_utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../pages/bottom_nav/bottom_nav_page.dart';
import 'not_found_screen.dart';

class AppRouter {
  static final rootNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter _router = GoRouter(
      debugLogDiagnostics: true,
      navigatorKey: rootNavigatorKey,
      routes: [
        GoRoute(
            path: PAGES.bottom.screenPath,
            name: PAGES.bottom.screenName,
            builder: (BuildContext context, state) => const BottomNavPage()),
      ],
      errorBuilder: (context, state) => const NotFoundScreen());

  static GoRouter get router => _router;
}
