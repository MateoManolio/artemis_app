import 'package:flutter/material.dart';
import 'package:artemis_app/src/config/theme/app_theme.dart';
import 'package:artemis_app/src/presentation/pages/details/widgets/section_title.dart';

class AbstractSection extends StatelessWidget {
  final String abstract;

  static const double _lineHeight = 1.6;
  static const String abstractTitle = 'Abstract';
  const AbstractSection({super.key, required this.abstract});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(title: abstractTitle),
        const SizedBox(height: AppSpacing.lg),
        Text(
          abstract,
          style: theme.textTheme.bodyMedium?.copyWith(
            height: _lineHeight,
            color: theme.colorScheme.onSurface,
          ),
        ),
      ],
    );
  }
}
