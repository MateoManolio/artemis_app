import 'package:flutter/material.dart';

class BottomActions extends StatelessWidget {
  static const double _spacing = 16.0;
  static const double _iconSize = 16.0;
  static const double _fontSize = 12.0;

  const BottomActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.bar_chart, size: _iconSize),
        SizedBox(width: 4),
        Text('DOI • PDF', style: TextStyle(fontSize: _fontSize)),
        Spacer(),
        Text('Related 10 >', style: TextStyle(fontSize: _fontSize)),
        SizedBox(width: _spacing),
        Text('references 69 >', style: TextStyle(fontSize: _fontSize)),
      ],
    );
  }
}
