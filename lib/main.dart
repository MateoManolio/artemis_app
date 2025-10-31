import 'package:artemis_app/firebase_options.dart';
import 'package:artemis_app/src/config/di/providers.dart';
import 'package:artemis_app/src/config/route/app_router.dart';
import 'package:artemis_app/src/config/theme/app_theme.dart';
import 'package:artemis_app/src/config/theme/theme_mode_provider.dart';
import 'package:artemis_app/src/data/datasource/local/isar_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final isar = await IsarStorage.getInstance();
  runApp(
    ProviderScope(
      overrides: [isarProvider.overrideWithValue(isar)],
      child: MainApp(),
    ),
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    final lightTheme = ref.watch(lightThemeProviderProvider);
    final darkTheme = ref.watch(darkThemeProviderProvider);
    final currentMode = ref.watch(themeModeProvider);

    return MaterialApp.router(
      title: 'Artemis',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: currentMode,
      routerConfig: router,
    );
  }
}
