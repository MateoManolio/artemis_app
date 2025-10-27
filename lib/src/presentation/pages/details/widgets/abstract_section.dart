import 'package:flutter/material.dart';
import 'package:artemis_app/src/presentation/pages/details/widgets/section_title.dart';

class AbstractSection extends StatelessWidget {
  final String abstract;
  
  static const double _spacing = 16.0;
  static const double _fontSize = 14.0;
  static const double _lineHeight = 1.6;

  const AbstractSection({
    super.key,
    required this.abstract,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(title: 'Abstract'),
        SizedBox(height: _spacing),
        Text(
          abstract,
          style: TextStyle(
            fontSize: _fontSize,
            height: _lineHeight,
            color: Colors.grey[800],
          ),
        ),
      ],
    );
  }
}

