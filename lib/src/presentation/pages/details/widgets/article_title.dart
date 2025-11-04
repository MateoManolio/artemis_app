import 'package:flutter/material.dart';

class ArticleTitle extends StatelessWidget {
  final String title;

  static const double _lineHeight = 1.3;

  const ArticleTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Text(
      title,
      style: theme.textTheme.headlineSmall?.copyWith(
        fontWeight: FontWeight.bold,
        height: _lineHeight,
        color: theme.colorScheme.onSurface,
      ),
    );
  }
}
