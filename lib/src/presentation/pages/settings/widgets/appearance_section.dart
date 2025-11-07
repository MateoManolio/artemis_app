import 'package:artemis_app/src/presentation/pages/settings/widgets/setting_dropdown_button.dart';
import 'package:artemis_app/src/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:artemis_app/l10n/app_localizations.dart';
import 'package:artemis_app/src/config/theme/theme_mode_provider.dart';
import 'setting_switch.dart';

class AppearanceSection extends ConsumerWidget {
  const AppearanceSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeNotifier = ref.read(themeModeProvider.notifier);
    final l10n = AppLocalizations.of(context)!;

    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    void toggleTheme() {
      if (isDarkMode) {
        themeNotifier.setLightMode();
      } else {
        themeNotifier.setDarkMode();
      }
    }

    return Column(
      children: [
        SettingSwitch(
          icon: Icons.palette_outlined,
          title: l10n.darkTheme,
          subtitle: isDarkMode ? l10n.currentlyDark : l10n.currentlyLight,
          value: isDarkMode,
          onChanged: (_) => toggleTheme(),
        ),
        const SizedBox(height: AppSpacing.lg),
        SettingDropdownButton(),
      ],
    );
  }
}
