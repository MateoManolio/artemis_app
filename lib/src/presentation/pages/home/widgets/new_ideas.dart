import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewIdeas extends StatelessWidget {
  const NewIdeas({super.key});

  static const double borderRadius = 16;
  static const double padding = 16;
  static const double iconSize = 80;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cardColor = theme.colorScheme.primary;
    
    return SizedBox(
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        color: cardColor,
        child: InkWell(
          onTap: () => context.push('/articles'),
          borderRadius: BorderRadius.circular(borderRadius),
          child: Padding(
            padding: const EdgeInsets.all(padding),
            child: Row(
              children: [
                //TODO: Container para la imagen placeholder
                Container(
                  width: iconSize,
                  height: iconSize,
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lightbulb_outline, color: Colors.white, size: 32),
                        SizedBox(width: 4),
                        Icon(Icons.book, color: Colors.white, size: 24),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: padding),
                // Texto
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Discover new ideas',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[900],
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Explore a variety of interesting topics',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
