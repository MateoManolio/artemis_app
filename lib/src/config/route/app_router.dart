import 'package:artemis_app/src/domain/entity/user.dart';
import 'package:artemis_app/src/presentation/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../presentation/pages/home/home_page.dart';
import '../../presentation/pages/login/login_page.dart';
import '../../presentation/pages/details/details_page.dart';
import '../../presentation/pages/articles/articles_page.dart';
import '../../presentation/pages/settings/settings_page.dart';
import 'details_parameters.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(Ref ref) {
  return GoRouter(
    initialLocation: '/login',
    redirect: (context, state) {
      final user = ref.read(userProvider);
      final isLoggedIn = user != null && user.uid != User.guest().uid;
      final isOnLoginPage = state.uri.path == LoginPage.routeName;

      // If user is logged in and tries to access login, redirect to home
      if (isLoggedIn && isOnLoginPage) {
        return HomePage.routeName;
      }

      // If user is not logged in and tries to access protected routes, redirect to login
      if (!isLoggedIn && !isOnLoginPage) {
        return LoginPage.routeName;
      }

      // No redirect needed
      return null;
    },
    routes: [
      GoRoute(
        path: LoginPage.routeName,
        name: 'login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: HomePage.routeName,
        name: 'home',
        builder: (context, state) {
          final user = ref.watch(userProvider);
          return HomePage(name: user?.displayName);
        },
      ),
      GoRoute(
        path: DetailsPage.routeName,
        name: 'details',
        builder: (context, state) {
          final params = state.extra as DetailsParameters?;
          return DetailsPage(article: params?.article);
        },
      ),
      GoRoute(
        path: ArticlesPage.routeName,
        name: 'articles',
        builder: (context, state) => const ArticlesPage(),
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
