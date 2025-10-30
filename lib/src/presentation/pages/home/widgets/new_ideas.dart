import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:artemis_app/src/presentation/widgets/safe_svg_picture.dart';

class NewIdeas extends StatelessWidget {
  const NewIdeas({super.key});

  static const double borderRadius = 16;
  static const double padding = 16;
  static const double iconSize = 80;
  static const String newIdeasIconPath = 'assets/svg/discover_new_ideas.svg';
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
                SafeSvgPicture.asset(newIdeasIconPath, width: iconSize, height: iconSize),
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
                        style: TextStyle(fontSize: 14, color: Colors.grey[800]),
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
