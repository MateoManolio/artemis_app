import 'package:flutter/material.dart';
import 'package:artemis_app/l10n/app_localizations.dart';

class ArticlesRead extends StatelessWidget {

  static const double padding = 16;
  static const double spacing = 8;
  static const double borderRadius = 10;
  static const double lineHeight = 10;
  
  final int articlesRead;
  final int weekGoal;
  const ArticlesRead({super.key, required this.articlesRead, required this.weekGoal});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return SizedBox(
      width: double.infinity,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: spacing,
            children: [
              Text(l10n.readArticlesThisWeek(articlesRead)),
              LinearProgressIndicator(
                value: articlesRead / weekGoal,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
                minHeight: lineHeight,
                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
