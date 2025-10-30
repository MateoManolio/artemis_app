import 'package:artemis_app/src/domain/entity/article.dart';
import 'package:flutter/material.dart';
import 'article_card.dart';

class ArticlesList extends StatelessWidget {
  final List<Article> articles;
  final ValueChanged<Article> onArticleTap;

  const ArticlesList({
    super.key,
    required this.articles,
    required this.onArticleTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: articles.length,
      itemBuilder: (context, index) {
        final article = articles[index];
        return ArticleCard(
          title: article.title,
          authors: article.authors.join(', '),
          type: article.type.displayName,
          year: article.year,
          isOpenAccess: article.openAccess,
          onTap: () => onArticleTap(article),
        );
      },
    );
  }
}
