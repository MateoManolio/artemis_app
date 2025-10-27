import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  
  static const double _fontSize = 18.0;

  const SectionTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: _fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

