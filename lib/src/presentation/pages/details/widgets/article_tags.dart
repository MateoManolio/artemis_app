import 'package:flutter/material.dart';

class ArticleTags extends StatelessWidget {
  final List<String> tags;
  
  static const double _tagPadding = 8.0;  
  static const double _tagSpacing = 8.0;
  final double borderRadius;

  const ArticleTags({
    super.key,
    required this.tags,
    this.borderRadius = 24.0,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: _tagSpacing,
      runSpacing: _tagSpacing,
      children: tags.map((tag) => _buildTag(tag, Theme.of(context).colorScheme)).toList(),
    );
  }

  Widget _buildTag(String text, ColorScheme colorScheme) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(borderRadius),
      color: colorScheme.surfaceContainerLow,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: _tagPadding * 2,
          vertical: _tagPadding,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 12,
            color: colorScheme.onSurface,
          ),
        ),
      ),
    );
  }
}

