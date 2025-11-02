import 'package:flutter/material.dart';
import 'package:artemis_app/src/config/theme/app_theme.dart';

class ArticleTags extends StatelessWidget {
  final List<String> tags;
  final double borderRadius;

  const ArticleTags({
    super.key,
    required this.tags,
    this.borderRadius = AppBorderRadius.xl,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    
    return Wrap(
      spacing: AppSpacing.sm,
      runSpacing: AppSpacing.sm,
      children: tags.map((tag) => _buildTag(tag, theme, colorScheme)).toList(),
    );
  }

  Widget _buildTag(String text, ThemeData theme, ColorScheme colorScheme) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(borderRadius),
      color: colorScheme.surfaceContainerLow,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.sm,
        ),
        child: Text(
          text,
          style: theme.textTheme.labelSmall?.copyWith(
            color: colorScheme.onSurface,
          ),
        ),
      ),
    );
  }
}

