import 'package:book_app/blocs/bottomNavBar/bottom_nav_bar_bloc.dart';
import 'package:book_app/presentation/Screens/BottomNavBar/bottomNavBar_screen.dart';
import 'package:book_app/presentation/Screens/Home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._();
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();
  static final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return BlocProvider(
            create: (context) => BottomNavBarBloc(),
            child: BottomNavBar(child: child),
          );
        },
        routes: [
          GoRoute(
            path: '/',
            name: 'home',
            builder: (context, state) => const HomePage(),
          ),
          // GoRoute(
          //   path: 'whatToChoose',
          //   name: 'whatToChoose',
          //   builder: (context, state) => const HomePage(),
          // ),
          // GoRoute(
          //   path: 'search',
          //   name: 'search',
          //   builder: (context, state) => const HomePage(),
          // ),
          // GoRoute(
          //   path: 'profile',
          //   name: 'profile',
          //   builder: (context, state) => const HomePage(),
          // ),
        ],
      ),
    ],
  );
}
