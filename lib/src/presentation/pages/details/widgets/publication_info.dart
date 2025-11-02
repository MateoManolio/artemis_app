import 'package:flutter/material.dart';
import 'package:artemis_app/src/config/theme/app_theme.dart';

class PublicationInfo extends StatelessWidget {
  final String publication;
  final String author;
  
  static const double _avatarRadius = 20.0;

  const PublicationInfo({
    super.key,
    required this.publication,
    required this.author,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    
    return Row(
      children: [
        CircleAvatar(
          radius: _avatarRadius,
          backgroundColor: colorScheme.surfaceContainerHighest,
          child: Icon(
            Icons.menu_book,
            size: AppIconSize.lg,
            color: colorScheme.onSurface,
          ),
        ),
        const SizedBox(width: AppSpacing.lg),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                publication,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                author,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

