import 'package:artemis_app/src/domain/entity/article.dart';
import 'package:artemis_app/src/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'article_card.dart';

class ArticlesList extends StatefulWidget {
  final List<Article> articles;
  final ValueChanged<Article> onArticleTap;
  final VoidCallback? onLoadMore;

  const ArticlesList({
    super.key,
    required this.articles,
    required this.onArticleTap,
    this.onLoadMore,
  });

  @override
  State<ArticlesList> createState() => _ArticlesListState();
}

class _ArticlesListState extends State<ArticlesList> {
  final ScrollController _scrollController = ScrollController();
  bool _hasTriggeredLoad = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void didUpdateWidget(ArticlesList oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Reset flag when new articles arrive
    if (oldWidget.articles.length != widget.articles.length) {
      _hasTriggeredLoad = false;
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    // Check if scroll is in valid position
    if (!_scrollController.hasClients) return;

    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    final threshold = maxScroll * 0.65;

    if (currentScroll >= threshold) {
      // Prevent multiple calls with local flag
      if (!_hasTriggeredLoad && widget.onLoadMore != null) {
        setState(() {
          _hasTriggeredLoad = true;
        });
        widget.onLoadMore!();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      itemCount: widget.articles.length + 1,
      itemBuilder: (context, index) {
        if (index == widget.articles.length) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: AppSpacing.xxl),
            child: Center(
              child: _hasTriggeredLoad
                  ? const CircularProgressIndicator()
                  : const SizedBox.shrink(),
            ),
          );
        }

        final article = widget.articles[index];
        return ArticleCard(
          title: article.title,
          authors: article.authors.join(', '),
          type: article.type.displayName,
          year: article.year,
          isOpenAccess: article.openAccess,
          onTap: () => widget.onArticleTap(article),
        );
      },
    );
  }
}
