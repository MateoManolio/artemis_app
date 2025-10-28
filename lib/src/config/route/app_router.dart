import 'package:artemis_app/src/presentation/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../presentation/pages/home/home_page.dart';
import '../../presentation/pages/login/login_page.dart';
import '../../presentation/pages/details/details_page.dart';
import '../../presentation/pages/articles/articles_page.dart';
import '../../presentation/pages/settings/settings_page.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(Ref ref) {

  ref.listen(userProvider, (previous, next) {
    // Esto se ejecutará cada vez que cambie el estado de autenticación
  });

  return GoRouter(
    initialLocation: '/login',
    redirect: (context, state) {
      final user = ref.read(userProvider);
      final isLoggingIn = state.uri.path == '/login';
      
      // Si no hay usuario y está intentando acceder a cualquier ruta excepto login
      if (user == null && !isLoggingIn) {
        return '/login';
      }
      
      // Si hay usuario y está en la página de login, redirigir a home
      if (user != null && isLoggingIn) {
        return '/home';
      }
      
      // Permitir acceso normal
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
          final displayName = user?.displayName;
          return HomePage(name: displayName);
        },
      ),
      GoRoute(
        path: DetailsPage.routeName,
        name: 'details',
        builder: (context, state) => const DetailsPage(),
      ),
      GoRoute(
        path: ArticlesPage.routeName,
        name: 'favorites',
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
