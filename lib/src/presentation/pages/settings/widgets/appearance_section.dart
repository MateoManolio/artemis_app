import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:artemis_app/src/config/theme/theme_mode_provider.dart';
import 'setting_switch.dart';

class AppearanceSection extends ConsumerWidget {
  const AppearanceSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeNotifier = ref.read(themeModeProvider.notifier);
    final themeMode = ref.watch(themeModeProvider);
    
    // Determinar si está en dark mode o no
    final isDarkMode = themeMode == ThemeMode.dark;

    void toggleTheme() {
      if (isDarkMode) {
        themeNotifier.setLightMode();
      } else {
        themeNotifier.setDarkMode();
      }
    }

    return SettingSwitch(
      icon: Icons.palette_outlined,
      title: 'Dark Theme',
      subtitle: isDarkMode ? 'Currently dark' : 'Currently light',
      value: isDarkMode,
      onChanged: (_) => toggleTheme(),
    );
  }
}