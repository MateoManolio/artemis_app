import 'package:flutter/material.dart';
import 'package:artemis_app/l10n/app_localizations.dart';
import 'package:artemis_app/src/config/theme/app_theme.dart';

class ArticlesRead extends StatelessWidget {
  final int articlesRead;
  final int weekGoal;
  
  static const double lineHeight = 10.0;
  
  const ArticlesRead({super.key, required this.articlesRead, required this.weekGoal});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final l10n = AppLocalizations.of(context)!;
    
    return SizedBox(
      width: double.infinity,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: AppSpacing.sm,
            children: [
              Text(
                l10n.readArticlesThisWeek(articlesRead),
                style: theme.textTheme.bodyLarge,
              ),
              LinearProgressIndicator(
                value: articlesRead / weekGoal,
                color: colorScheme.primary,
                backgroundColor: colorScheme.surfaceContainerHighest,
                minHeight: lineHeight,
                borderRadius: BorderRadius.circular(AppBorderRadius.md),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
