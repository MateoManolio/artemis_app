import 'package:flutter/material.dart';
import 'package:artemis_app/src/presentation/pages/details/widgets/metric_card.dart';

class MetricsSection extends StatelessWidget {
  final Map<String, String> metrics;
  
  static const double _spacing = 16.0;
  static const double _fontSize = 18.0;

  const MetricsSection({
    super.key,
    required this.metrics,
  });

  @override
  Widget build(BuildContext context) {
    final entries = metrics.entries.toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Metrics',
          style: TextStyle(
            fontSize: _fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: _spacing),
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
                return SizedBox(width: _spacing);
              }
            },
          ),
        ),
      ],
    );
  }
}

