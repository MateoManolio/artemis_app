import 'package:flutter/material.dart';

class ArticlesText extends StatelessWidget {
  static const double padding = 16;
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
                spacing: 8,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  if (isOa)
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.blueAccent,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.1),
                            blurRadius: 2,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.check_circle,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                ],
              ),
              SizedBox(height: 4),
              Text(
                domain,
                style: TextStyle(
                  fontSize: 14,
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: padding),
        Text(
          type,
          style: TextStyle(
            fontSize: 14,
            color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
          ),
        ),
      ],
    );
  }
}
