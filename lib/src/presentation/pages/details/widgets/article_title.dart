import 'package:flutter/material.dart';

class ArticleTitle extends StatelessWidget {
  final String title;
  
  static const double _fontSize = 24.0;
  static const double _lineHeight = 1.3;

  const ArticleTitle({
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
        color: Colors.grey[900],
        height: _lineHeight,
      ),
    );
  }
}

