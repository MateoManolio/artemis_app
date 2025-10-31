import 'package:artemis_app/src/presentation/pages/articles/providers/articles_data_provider.dart';
import 'package:artemis_app/src/presentation/pages/articles/providers/debouncer_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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

  @override
  void initState() {
    super.initState();
    // Cargar datos solo si no hay datos cacheados
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(articlesDataProvider.notifier).fetchArticles();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
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
    context.push('/details', extra: DetailsParameters(article: article));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    ref.listen<ArticlesFilters>(articlesFiltersNotifierProvider, (
      previous,
      next,
    ) {
      ref.read(articlesDataProvider.notifier).refresh();
      ref.read(articlesDataProvider.notifier).fetchArticles();
    });

    final articlesState = ref.watch(articlesDataProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Article Explorer',
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: ArticlesHeader(
              searchController: _searchController,
              onSearchChanged: _onSearchChanged,
              onFiltersPressed: _onFiltersPressed,
            ),
          ),
          Expanded(
            child: articlesState.when(
              data: (articles) {
                if (articles.isEmpty) {
                  return const Center(child: Text('No articles found'));
                }

                return ArticlesList(
                  articles: articles,
                  onArticleTap: _onArticleTap,
                  onLoadMore: () {
                    ref.read(articlesDataProvider.notifier).loadMoreArticles();
                  },
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stackTrace) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.error_outline,
                        size: 64,
                        color: Colors.red,
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: Text(
                          error.toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.red),
                        ),
                      ),
                      const SizedBox(height: 24),
                      ElevatedButton.icon(
                        onPressed: () {
                          ref.read(articlesDataProvider.notifier).refresh();
                          ref
                              .read(articlesDataProvider.notifier)
                              .fetchArticles();
                        },
                        icon: const Icon(Icons.refresh),
                        label: const Text('Retry'),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
