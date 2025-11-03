import 'package:artemis_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

/// Pumps a widget with all necessary providers and localizations
/// for widget testing
/// Note: overrides parameter should be List\<Override\> from riverpod
Future<void> pumpApp(
  WidgetTester tester,
  Widget widget, {
  List<Override>? overrides,
  GoRouter? router,
}) async {
  final container = ProviderContainer(overrides: overrides ?? const []);

  final testRouter =
      router ??
      GoRouter(
        routes: [GoRoute(path: '/', builder: (context, state) => widget)],
      );

  await tester.pumpWidget(
    UncontrolledProviderScope(
      container: container,
      child: MaterialApp.router(
        routerConfig: testRouter,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    ),
  );
}

/// Helper to create a test GoRouter with specific routes
GoRouter createTestRouter({
  required String initialLocation,
  List<GoRoute>? routes,
  Widget Function(BuildContext, GoRouterState)? builder,
}) {
  return GoRouter(
    initialLocation: initialLocation,
    routes:
        routes ??
        [
          GoRoute(
            path: '/',
            builder: builder ?? (context, state) => const SizedBox(),
          ),
        ],
  );
}

/// Finds widgets by type
Finder findWidgetByType<T extends Widget>() {
  return find.byType(T);
}

/// Helper to wait for async operations in tests
Future<void> waitFor(WidgetTester tester, {Duration? timeout}) async {
  await tester.pumpAndSettle(timeout ?? const Duration(seconds: 5));
}
