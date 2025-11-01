import 'package:flutter/material.dart';

class ArticlesText extends StatelessWidget {
  static const double _titleFontSize = 18.0;
  static const double _subtitleFontSize = 14.0;
  static const double _verticalSpacing = 4.0;
  static const double _iconSize = 16.0;
  static const double _iconBorderRadius = 16.0;
  static const double _iconShadowBlur = 2.0;
  static const double _iconShadowOffsetY = 1.0;
  static const double _iconSpacing = 8.0;
  static const double _subtitleOpacity = 0.6;
  static const double _iconShadowOpacity = 0.1;
  static const double padding = 16.0;

  const ArticlesText({
    super.key,
    required this.title,
    required this.domain,
    required this.type,
    required this.isOa,
  });

  final String title;
  final String domain;
  final String type;
  final bool isOa;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                spacing: _iconSpacing,
                children: [
                  Flexible(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: _titleFontSize,
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.onSurface,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  if (isOa)
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_iconBorderRadius),
                        color: Colors.blueAccent,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(
                              alpha: _iconShadowOpacity,
                            ),
                            blurRadius: _iconShadowBlur,
                            offset: const Offset(0, _iconShadowOffsetY),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.check_circle,
                        color: Colors.white,
                        size: _iconSize,
                      ),
                    ),
                ],
              ),
              const SizedBox(height: _verticalSpacing),
              Text(
                domain,
                style: TextStyle(
                  fontSize: _subtitleFontSize,
                  color: theme.colorScheme.onSurface.withValues(
                    alpha: _subtitleOpacity,
                  ),
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        const SizedBox(width: padding),
        Text(
          type,
          style: TextStyle(
            fontSize: _subtitleFontSize,
            color: theme.colorScheme.onSurface.withValues(
              alpha: _subtitleOpacity,
            ),
          ),
        ),
      ],
    );
  }
}
