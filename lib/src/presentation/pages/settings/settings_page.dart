import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'widgets/settings_section.dart';
import 'widgets/appearance_section.dart';
import 'widgets/reading_section.dart';
import 'widgets/about_section.dart';

class SettingsPage extends StatelessWidget {
  static const String routeName = '/settings';
  
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
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
          const SizedBox(height: 16),
          
          // Appearance Section
          SettingsSection(
            title: 'APPEARANCE',
            children: [
              const AppearanceSection(),
            ],
          ),
          
          const SizedBox(height: 24),
          
          // Reading Section
          SettingsSection(
            title: 'READING',
            children: [
              const ReadingSection(),
            ],
          ),
          
          const SizedBox(height: 24),
          
          // About Section
          SettingsSection(
            title: 'ABOUT',
            children: [
              const AboutSection(),
            ],
          ),
          
          const SizedBox(height: 32),
          
          // Footer
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    'Artemis - Article Explorer',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Your companion for discovering research',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}