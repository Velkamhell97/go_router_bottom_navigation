import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../root_screen.dart';

class GoRouterDelegate {
  GoRouterDelegate() {
    setup();
  }

  GoRouter get config => _router;

  late final GoRouter _router;

  final _rootNavigator = GlobalKey<NavigatorState>();
  // final _shellNavigator = GlobalKey<NavigatorState>();

  final _tabANavigatorKey = GlobalKey<NavigatorState>();
  // final _tabNavigatorKey = GlobalKey<NavigatorState>();

  void setup() {
    _router = GoRouter(
      navigatorKey: _rootNavigator,
      initialLocation: '/a',
      routes: [
        StatefulShellRoute(
          builder: (context, state, child) {
            return RootScreen(view: child, shellState: state);
          },
          branches: [
            StatefulShellBranch(
              navigatorKey: _tabANavigatorKey,
              routes: [
                GoRoute(
                  path: '/a',
                  pageBuilder: (context, state) => const MaterialPage(child: Page1()),
                )
              ]
            ),

            StatefulShellBranch(
              // navigatorKey: _tabBNavigatorKey,
              routes: [
                GoRoute(
                  path: '/b',
                  pageBuilder: (context, state) => const MaterialPage(child: Page2()),
                )
              ]
            ),

            StatefulShellBranch(
              // navigatorKey: _tabCNavigatorKey,
              routes: [
                GoRoute(
                  path: '/c',
                  pageBuilder: (context, state) => const MaterialPage(child: Page3()),
                )
              ]
            ),
          ]
        )
      ]
    );
  }
}