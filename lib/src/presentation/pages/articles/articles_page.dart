import 'package:artemis_app/src/presentation/pages/articles/providers/articles_data_provider.dart';
import 'package:artemis_app/src/presentation/pages/details/details_page.dart';
import 'package:artemis_app/src/presentation/providers/debouncer_provider.dart';
import 'package:artemis_app/src/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:artemis_app/l10n/app_localizations.dart';
import 'package:artemis_app/src/domain/entity/article.dart';
import 'package:artemis_app/src/config/route/details_parameters.dart';
import 'package:artemis_app/src/presentation/widgets/filter_modal.dart';
import 'package:artemis_app/src/presentation/providers/articles_filters_provider.dart';
import 'widgets/articles_header.dart';
import 'widgets/articles_list.dart';

class ArticlesPage extends ConsumerStatefulWidget {
  static const String routeName = '/articles';

  const ArticlesPage({super.key});

  @override
  ConsumerState<ArticlesPage> createState() => _ArticlesPageState();
}

class _ArticlesPageState extends ConsumerState<ArticlesPage> {
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(articlesDataProvider.notifier).fetchArticles();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _onSearchChanged(String query) {
    ref.read(debouncerProvider.notifier).debounceSearch(query, (
      debounced,
      cancelToken,
    ) {
      ref
          .read(articlesDataProvider.notifier)
          .updateQuery(debounced, cancelToken);
    });
  }

  void _onFiltersPressed() {
    FilterModal.show(context);
  }

  void _onArticleTap(Article article) {
    context.push(
      DetailsPage.routeName,
      extra: DetailsParameters(article: article),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final l10n = AppLocalizations.of(context)!;

    ref.listen<ArticlesFilters>(articlesFiltersNotifierProvider, (
      previous,
      next,
    ) {
      ref.read(articlesDataProvider.notifier).refresh();
      ref.read(articlesDataProvider.notifier).fetchArticles();
    });

    final articlesState = ref.watch(articlesDataProvider);

    // Listen for pagination errors
    ref.listen(articlesDataProvider, (previous, next) {
      final notifier = ref.read(articlesDataProvider.notifier);
      if (notifier.paginationError != null && next.hasValue) {
        // Show snackbar when there's a pagination error
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(notifier.paginationError!),
                action: SnackBarAction(
                  label: l10n.retry,
                  onPressed: () {
                    notifier.loadMoreArticles();
                  },
                ),
              ),
            );
            // Clear the error after showing
            notifier.paginationError = null;
          }
        });
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.articleExplorer,
          style: theme.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: colorScheme.onSurface,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              _searchController.clear();
              ref.read(articlesDataProvider.notifier).refresh();
              ref.read(articlesFiltersNotifierProvider.notifier).reset();
              ref.read(articlesDataProvider.notifier).fetchArticles();
            },
          ),
        ],
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          // Sticky header with search and filters (always visible)
          SliverPersistentHeader(
            pinned: true,
            delegate: _ArticlesHeaderDelegate(
              child: Container(
                color: colorScheme.surface,
                padding: const EdgeInsets.all(AppSpacing.lg),
                child: ArticlesHeader(
                  searchController: _searchController,
                  onSearchChanged: _onSearchChanged,
                  onFiltersPressed: _onFiltersPressed,
                ),
              ),
            ),
          ),
          // Content based on state
          articlesState.when(
            data: (articles) {
              if (articles.isEmpty) {
                return SliverFillRemaining(
                  child: Center(child: Text(l10n.noArticlesFound)),
                );
              }

              return ArticlesList.sliver(
                articles: articles,
                scrollController: _scrollController,
                onArticleTap: _onArticleTap,
                onLoadMore: () {
                  ref.read(articlesDataProvider.notifier).loadMoreArticles();
                },
              );
            },
            loading: () => const SliverFillRemaining(
              child: Center(child: CircularProgressIndicator()),
            ),
            error: (error, stackTrace) {
              return SliverFillRemaining(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.error_outline,
                        size: AppIconSize.xxxl,
                        color: colorScheme.error,
                      ),
                      const SizedBox(height: AppSpacing.lg),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.xxl,
                        ),
                        child: Text(
                          error.toString(),
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: colorScheme.error,
                          ),
                        ),
                      ),
                      const SizedBox(height: AppSpacing.xl),
                      ElevatedButton.icon(
                        onPressed: () {
                          ref.read(articlesDataProvider.notifier).refresh();
                          ref
                              .read(articlesDataProvider.notifier)
                              .fetchArticles();
                        },
                        icon: const Icon(Icons.refresh),
                        label: Text(l10n.retry),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

/// Custom delegate for the persistent header
class _ArticlesHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _ArticlesHeaderDelegate({required this.child});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return child;
  }

  @override
  double get maxExtent => 90.0;

  @override
  double get minExtent => 90.0; // Same as maxExtent to keep it fixed

  @override
  bool shouldRebuild(covariant _ArticlesHeaderDelegate oldDelegate) {
    return child != oldDelegate.child;
  }
}
