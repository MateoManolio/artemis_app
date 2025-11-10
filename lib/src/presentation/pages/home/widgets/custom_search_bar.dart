import 'package:artemis_app/src/config/route/details_parameters.dart';
import 'package:artemis_app/src/config/theme/app_theme.dart';
import 'package:artemis_app/src/domain/entity/article.dart';
import 'package:artemis_app/src/presentation/pages/details/details_page.dart';
import 'package:artemis_app/src/presentation/pages/home/providers/get_articles_plus_notifier.dart';
import 'package:artemis_app/src/presentation/pages/home/widgets/articles_text.dart';
import 'package:artemis_app/src/presentation/providers/debouncer_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:artemis_app/l10n/app_localizations.dart';

class CustomSearchBar extends ConsumerStatefulWidget {
  const CustomSearchBar({super.key, required this.favorites});

  final List<Article> favorites;

  @override
  ConsumerState<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends ConsumerState<CustomSearchBar> {
  final SearchController _searchController = SearchController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    ref.listen(getArticlesPlusProvider, (previous, next) {
      if (mounted && _searchController.isOpen) {
        final currentText = _searchController.text;
        _searchController.text = '$currentText ';
        _searchController.text = currentText;
      }
    });

    ref.listen(articlesLoadingStateProvider, (previous, next) {
      if (mounted && _searchController.isOpen) {
        final currentText = _searchController.text;
        _searchController.text = '$currentText ';
        _searchController.text = currentText;
      }
    });

    return Expanded(
      child: SearchAnchor(
        searchController: _searchController,
        builder: (_, controller) => SearchBar(
          controller: controller,
          onTap: () {
            ref
                .read(getArticlesPlusProvider.notifier)
                .loadInitialArticles(widget.favorites);
            ref.read(articlesLoadingStateProvider.notifier).setLoading(false);
            controller.openView();
          },
          onChanged: (value) => controller.openView(),
          leading: const Icon(Icons.search),
        ),
        viewOnChanged: (value) {
          ref.read(debouncerProvider.notifier).debounceSearch(value, (
            query,
            cancelToken,
          ) {
            ref
                .read(getArticlesPlusProvider.notifier)
                .getArticlesAndFavorites(query, cancelToken, widget.favorites);
          });
        },
        viewOnClose: () {
          ref.invalidate(getArticlesPlusProvider);
          ref.read(articlesLoadingStateProvider.notifier).setLoading(false);
        },
        suggestionsBuilder: (_, controller) {
          final articles = ref.watch(getArticlesPlusProvider);
          final isLoading = ref.watch(articlesLoadingStateProvider);
          final currentQuery = controller.text.trim();

          final filteredArticles = currentQuery.isEmpty
              ? articles
              : articles.where((art) {
                  final titleLower = art.title.toLowerCase();
                  final queryLower = currentQuery.toLowerCase();
                  final domainLower = art.domain.toLowerCase();
                  final typeLower = art.type.displayName.toLowerCase();
                  final authorsLower = art.authors
                      .map((a) => a.toLowerCase())
                      .join(' ');

                  final words = queryLower
                      .split(' ')
                      .where((w) => w.isNotEmpty);

                  return words.any(
                    (word) =>
                        titleLower.split(' ').any((w) => w.startsWith(word)) ||
                        domainLower.split(' ').any((w) => w.startsWith(word)) ||
                        typeLower.split(' ').any((w) => w.startsWith(word)) ||
                        authorsLower
                            .split(' ')
                            .any((w) => w.startsWith(word)) ||
                        titleLower.contains(word),
                  );
                }).toList();

          if (filteredArticles.isEmpty) {
            final theme = Theme.of(context);
            final colorScheme = theme.colorScheme;

            return [
              Padding(
                padding: const EdgeInsets.all(AppSpacing.xl),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.search_off,
                        size: AppIconSize.xxl,
                        color: colorScheme.onSurfaceVariant,
                      ),
                      const SizedBox(height: AppSpacing.lg),
                      Text(
                        l10n.noResultsFound,
                        style: theme.textTheme.labelLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: colorScheme.onSurface,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      Text(
                        currentQuery.isEmpty
                            ? l10n.startTypingToSearch
                            : l10n.tryDifferentSearchTerm,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          }

          final resultWidgets = <Widget>[
            ...filteredArticles.map((article) {
              return InkWell(
                onTap: () {
                  controller.closeView('');
                  context.push(
                    DetailsPage.routeName,
                    extra: DetailsParameters(article: article),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(AppSpacing.lg),
                  child: ArticlesText(
                    title: article.title,
                    domain: article.domain,
                    type: article.type.displayName,
                    isOa: article.openAccess,
                  ),
                ),
              );
            }),
            if (isLoading)
              const Padding(
                padding: EdgeInsets.all(AppSpacing.lg),
                child: Center(child: CircularProgressIndicator()),
              ),
          ];

          return resultWidgets;
        },
      ),
    );
  }
}
