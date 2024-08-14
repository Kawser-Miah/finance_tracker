import 'package:finance_tracker/application/core/services/routing/route_utils.dart';
import 'package:finance_tracker/domain/models/income_expense_category.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../pages/bottom_nav/bottom_nav_page.dart';
import '../../../pages/category_details_page/category_details_page.dart';
import '../../../pages/data_insert_page/data_insert_page.dart';
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
        GoRoute(
            path: PAGES.categoryDetails.screenPath,
            name: PAGES.categoryDetails.screenName,
            builder: (context, state) {
              String category = state.extra as String;

              return CategoryDetailsPage(
                category: category,
              );
            }),
        GoRoute(
            path: PAGES.insert.screenPath,
            name: PAGES.insert.screenName,
            builder: (context, state) {
              final List<dynamic> extras = state.extra as List<dynamic>;

              String type = extras[0] as String;

              String category = extras[1] as String;
              return DataInsertPage(type: type, category: category);
            })
      ],
      errorBuilder: (context, state) => const NotFoundScreen());

  static GoRouter get router => _router;
}
