import 'package:book_app/blocs/bottomNavBar/bottom_nav_bar_bloc.dart';
import 'package:book_app/presentation/Screens/BottomNavBar/bottomNavBar_screen.dart';
import 'package:book_app/presentation/Screens/Home/allAudioAndBook_screen.dart';
import 'package:book_app/presentation/Screens/Home/allNewAndTopBook_screen.dart';
import 'package:book_app/presentation/Screens/Home/home_screen.dart';
import 'package:book_app/presentation/Screens/Library/library_screen.dart';
import 'package:book_app/presentation/Screens/WhatChooseScreen/whatChoose_screen.dart';
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
            builder: (context, state) => const HomeSceen(),
            routes: [
              GoRoute(
                path: 'allAudioBook',
                name: 'allAudioBook',
                builder: (context, state) {
                  final Map<String, dynamic>? extraData =
                      state.extra as Map<String, dynamic>?;
                  final String topTitle = extraData?['topTitle'] as String;
                  return AllAudioBookScreen(
                    topTitle: topTitle,
                  );
                },
              ),
              GoRoute(
                path: 'allNewTopBook',
                name: 'allNewTopBook',
                builder: (context, state) {
                  final Map<String, dynamic>? extraData =
                      state.extra as Map<String, dynamic>?;
                  final int index = extraData?['index'] as int;
                  return AllNewTopBookScreen(
                    index: index,
                  );
                },
              ),
            ],
          ),
          GoRoute(
            path: '/whatToChoose',
            name: 'whatToChoose',
            builder: (context, state) => const WhatChooseScreen(),
          ),
          GoRoute(
            path: '/library',
            name: 'library',
            builder: (context, state) => const LibraryScreen(),
          ),
        ],
      ),
    ],
  );
}
