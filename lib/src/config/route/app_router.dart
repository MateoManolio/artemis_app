import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../presentation/pages/home/home_page.dart';
import '../../presentation/pages/login/login_page.dart';
import '../../presentation/pages/details/details_page.dart';
import '../../presentation/pages/favorites/favorites_page.dart';
import '../../presentation/pages/settings/settings_page.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(Ref ref) {
  return GoRouter(
    initialLocation: '/home',
    routes: [
      GoRoute(
        path: HomePage.routeName,
        name: 'home',
        builder: (context, state) => HomePage(name: 'Guest'),
      ),
      GoRoute(
        path: LoginPage.routeName,
        name: 'login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: DetailsPage.routeName,
        name: 'details',
        builder: (context, state) => const DetailsPage(),
      ),
      GoRoute(
        path: FavoritesPage.routeName,
        name: 'favorites',
        builder: (context, state) => const FavoritesPage(),
      ),
      GoRoute(
        path: SettingsPage.routeName,
        name: 'settings',
        builder: (context, state) => const SettingsPage(),
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      appBar: AppBar(title: const Text('Error')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error, size: 64, color: Colors.red),
            const SizedBox(height: 16),
            Text('Error: ${state.error}'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => context.go('/home'),
              child: const Text('Ir al Inicio'),
            ),
          ],
        ),
      ),
    ),
  );
}
