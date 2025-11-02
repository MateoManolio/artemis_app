import 'package:flutter/material.dart';
import 'package:artemis_app/src/config/theme/app_theme.dart';

class BottomActions extends StatelessWidget {
  const BottomActions({super.key});

  static const String doiPdf = 'DOI • PDF';
  static const String related = 'Related 10 >';
  static const String references = 'references 69 >';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Row(
      children: [
        Icon(
          Icons.bar_chart,
          size: AppIconSize.sm,
          color: colorScheme.onSurface,
        ),
        const SizedBox(width: AppSpacing.xs),
        Text(
          doiPdf,
          style: theme.textTheme.labelSmall?.copyWith(
            color: colorScheme.onSurface,
          ),
        ),
        const Spacer(),
        Text(
          related,
          style: theme.textTheme.labelSmall?.copyWith(
            color: colorScheme.onSurface,
          ),
        ),
        const SizedBox(width: AppSpacing.lg),
        Text(
          references,
          style: theme.textTheme.labelSmall?.copyWith(
            color: colorScheme.onSurface,
          ),
        ),
      ],
    );
  }
}
