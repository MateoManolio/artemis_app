import 'package:flutter/material.dart';
import 'package:artemis_app/src/config/theme/app_theme.dart';

class ArticlesText extends StatelessWidget {
  static const double _verticalSpacing = 4.0;
  static const double _subtitleOpacity = 0.6;
  static const double _iconShadowOpacity = 0.1;
  static const double _iconShadowBlur = 2.0;
  static const double _iconShadowOffsetY = 1.0;
  static const int _maxLines = 2;

  const ArticlesText({
    super.key,
    required this.title,
    required this.domain,
    required this.type,
    required this.isOa,
  });

  final String title;
  final String domain;
  final String type;
  final bool isOa;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                spacing: AppSpacing.sm,
                children: [
                  Flexible(
                    child: Text(
                      title,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.onSurface,
                      ),
                      maxLines: _maxLines,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  if (isOa)
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppBorderRadius.lg),
                        color: theme.colorScheme.tertiary,
                        boxShadow: [
                          BoxShadow(
                            color: theme.colorScheme.shadow.withValues(
                              alpha: _iconShadowOpacity,
                            ),
                            blurRadius: _iconShadowBlur,
                            offset: const Offset(0, _iconShadowOffsetY),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.check_circle,
                        color: theme.colorScheme.surface,
                        size: AppIconSize.sm,
                      ),
                    ),
                ],
              ),
              const SizedBox(height: _verticalSpacing),
              Text(
                domain,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurface.withValues(
                    alpha: _subtitleOpacity,
                  ),
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        const SizedBox(width: AppSpacing.lg),
        Text(
          type,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.onSurface.withValues(
              alpha: _subtitleOpacity,
            ),
          ),
        ),
      ],
    );
  }
}
