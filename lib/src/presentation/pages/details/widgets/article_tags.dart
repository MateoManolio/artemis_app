import 'package:flutter/material.dart';

class ArticleTags extends StatelessWidget {
  final List<String> tags;
  
  static const double _tagPadding = 8.0;
  static const double _tagBorderRadius = 12.0;
  static const double _tagSpacing = 8.0;

  const ArticleTags({
    super.key,
    required this.tags,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: _tagSpacing,
      runSpacing: _tagSpacing,
      children: tags.map((tag) => _buildTag(tag)).toList(),
    );
  }

  Widget _buildTag(String text) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: _tagPadding * 2,
        vertical: _tagPadding,
      ),
      decoration: BoxDecoration(
        color: Colors.amber[50],
        borderRadius: BorderRadius.circular(_tagBorderRadius),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12,
          color: Colors.grey[800],
        ),
      ),
    );
  }
}

