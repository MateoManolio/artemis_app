import 'package:artemis_app/src/domain/entity/article.dart';
import 'package:artemis_app/src/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'article_card.dart';

class ArticlesList extends StatefulWidget {
  final List<Article> articles;
  final ValueChanged<Article> onArticleTap;
  final VoidCallback? onLoadMore;
  final bool asSliver;
  final ScrollController? scrollController;

  const ArticlesList({
    super.key,
    required this.articles,
    required this.onArticleTap,
    this.onLoadMore,
    this.scrollController,
  }) : asSliver = false;

  /// Constructor that returns slivers to be used inside a CustomScrollView
  const ArticlesList.sliver({
    super.key,
    required this.articles,
    required this.onArticleTap,
    this.onLoadMore,
    required this.scrollController,
  }) : asSliver = true;

  @override
  State<ArticlesList> createState() => _ArticlesListState();
}

class _ArticlesListState extends State<ArticlesList> {
  ScrollController? _internalScrollController;
  bool _hasTriggeredLoad = false;

  ScrollController get _scrollController =>
      widget.scrollController ?? _internalScrollController!;

  @override
  void initState() {
    super.initState();
    if (widget.scrollController == null) {
      _internalScrollController = ScrollController();
    }
    _scrollController.addListener(_onScroll);
  }

  @override
  void didUpdateWidget(ArticlesList oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Reset flag when articles list changes (either new articles or same articles but different instance)
    if (oldWidget.articles != widget.articles) {
      _hasTriggeredLoad = false;
    }

    // Handle controller changes
    if (oldWidget.scrollController != widget.scrollController) {
      oldWidget.scrollController?.removeListener(_onScroll);
      _scrollController.addListener(_onScroll);
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _internalScrollController?.dispose();
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

  List<Widget> _buildSlivers() {
    return [
      SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
        sliver: SliverList.builder(
          itemCount: widget.articles.length,
          itemBuilder: (context, index) {
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
        ),
      ),

      // Loading indicator at the bottom
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: AppSpacing.xxl),
          child: Center(
            child: _hasTriggeredLoad
                ? const CircularProgressIndicator()
                : const SizedBox.shrink(),
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final slivers = _buildSlivers();

    if (widget.asSliver) {
      return SliverMainAxisGroup(slivers: slivers);
    }

    return CustomScrollView(
      controller: _internalScrollController,
      slivers: slivers,
    );
  }
}
