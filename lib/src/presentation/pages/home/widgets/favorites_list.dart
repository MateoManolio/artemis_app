import 'package:artemis_app/src/config/route/details_parameters.dart';
import 'package:artemis_app/src/domain/entity/article.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:artemis_app/src/presentation/pages/home/widgets/articles_text.dart';

class FavoritesList extends StatelessWidget {
  static const double separatorHeight = 6;
  static const double padding = 16;

  final List<Article> articles;
  const FavoritesList({super.key, required this.articles});

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
        if (articles.isEmpty)
          _buildEmptyPlaceholder(theme)
        else
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: articles.length,
            separatorBuilder: (context, index) =>
                SizedBox(height: separatorHeight),
            itemBuilder: (context, index) {
              final article = articles[index];

              return InkWell(
                onTap: () => context.push(
                  '/details',
                  extra: DetailsParameters(article: article),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(padding),
                  child: ArticlesText(
                    title: article.title,
                    domain: article.domain,
                    type: article.type.displayName,
                    isOa: article.openAccess,
                  ),
                ),
              );
            },
          ),
      ],
    );
  }

  Widget _buildEmptyPlaceholder(ThemeData theme) {
    return Container(
      padding: const EdgeInsets.all(padding * 2),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.2),
          width: 1,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.bookmark_border,
              size: 64,
              color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
            ),
            const SizedBox(height: 16),
            Text(
              'No favorites yet',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: theme.colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Start exploring articles and save your favorites here',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
