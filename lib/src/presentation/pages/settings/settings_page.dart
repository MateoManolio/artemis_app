import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:artemis_app/l10n/app_localizations.dart';
import 'package:artemis_app/src/config/theme/app_theme.dart';
import 'widgets/settings_section.dart';
import 'widgets/appearance_section.dart';
import 'widgets/reading_section.dart';
import 'widgets/about_section.dart';
import 'widgets/account_section.dart';

class SettingsPage extends StatelessWidget {
  static const String routeName = '/settings';

  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.settings,
          style: theme.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: colorScheme.onSurface,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: AppSpacing.lg),

          // Account Section
          SettingsSection(
            title: l10n.account,
            children: [const AccountSection()],
          ),

          const SizedBox(height: AppSpacing.xl),

          // Appearance Section
          SettingsSection(
            title: l10n.appearance,
            children: [const AppearanceSection()],
          ),

          const SizedBox(height: AppSpacing.xl),

          // Reading Section
          SettingsSection(
            title: l10n.reading,
            children: [const ReadingSection()],
          ),

          const SizedBox(height: AppSpacing.xl),

          // About Section
          SettingsSection(title: l10n.about, children: [const AboutSection()]),

          const SizedBox(height: AppSpacing.xxl),

          // Footer
          Center(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: Column(
                children: [
                  Text(
                    l10n.artemisArticleExplorer,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xs),
                  Text(
                    l10n.yourCompanionForResearch,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant.withValues(
                        alpha: 0.7,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: AppSpacing.xxl),
        ],
      ),
    );
  }
}
