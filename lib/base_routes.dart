import 'package:deep_link_poc/views/config_screen.dart';
import 'package:deep_link_poc/views/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'views/home_screen.dart';

class BaseRoutes {
  static const String homeScreen = '/';
  static const String detailScreen = '/details';
  static const String configScreen = '/config';

  static GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: homeScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
        routes: <RouteBase>[
          GoRoute(
            path: detailScreen.getPathFromName(),
            builder: (BuildContext context, GoRouterState state) {
              return const DetailScreen();
            },
          ),
          GoRoute(
            path: configScreen.getPathFromName(),
            builder: (BuildContext context, GoRouterState state) {
              return const ConfigScreen();
            },
          ),
        ],
      ),
    ],
  );
}

extension GetPathFromName on String {
  String getPathFromName() {
    return replaceFirst('/', '');
  }
}
