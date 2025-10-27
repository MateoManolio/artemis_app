import 'package:flutter/material.dart';
import 'package:artemis_app/src/presentation/pages/home/widget/articles_text.dart';

class FavoritesList extends StatelessWidget {
  static const double separatorHeight = 6;
  static const double padding = 16;
  const FavoritesList({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: padding),
          child: Text(
            'Favorites',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.onSurface,
            ),
          ),
        ),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 10,
          separatorBuilder: (context, index) => SizedBox(height: separatorHeight),
          itemBuilder: (context, index) {
            // Ejemplo de datos - puedes reemplazarlos con datos reales
            final titles = [
              'Design Trends of 2024',
              'Mobile App Development',
              'UI/UX Best Practices',
              'Programming Languages',
              'Database Architecture',
              'Cloud Computing',
              'Machine Learning Basics',
              'Web Development Trends',
              'Cybersecurity Guide',
              'DevOps Fundamentals',
            ];
            
            final categories = [
              'Design',
              'Development',
              'UI/UX',
              'Programming',
              'Database',
              'Cloud',
              'AI/ML',
              'Web',
              'Security',
              'DevOps',
            ];
            
            return Padding(
              padding: const EdgeInsets.all(padding),
              child: ArticlesText(
                title: titles[index % titles.length],
                category: categories[index % categories.length],
                readingTime: (index + 3) * 2,
              ),
            );
          },
        ),
      ],
    );
  }
}