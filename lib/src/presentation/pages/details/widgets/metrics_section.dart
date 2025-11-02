import 'package:flutter/material.dart';
import 'package:artemis_app/l10n/app_localizations.dart';
import 'package:artemis_app/src/config/theme/app_theme.dart';
import 'package:artemis_app/src/presentation/pages/details/widgets/metric_card.dart';

class MetricsSection extends StatelessWidget {
  final Map<String, String> metrics;

  const MetricsSection({
    super.key,
    required this.metrics,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final entries = metrics.entries.toList();
    final l10n = AppLocalizations.of(context)!;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.metrics,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: AppSpacing.lg),
        Row(
          children: List.generate(
            entries.length * 2 - 1,
            (index) {
              if (index % 2 == 0) {
                return Expanded(
                  child: MetricCard(
                    label: entries[index ~/ 2].key,
                    value: entries[index ~/ 2].value,
                  ),
                );
              } else {
                return const SizedBox(width: AppSpacing.lg);
              }
            },
          ),
        ),
      ],
    );
  }
}

