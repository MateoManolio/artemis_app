import 'package:artemis_app/src/config/route/details_parameters.dart';
import 'package:artemis_app/src/domain/entity/article.dart';
import 'package:artemis_app/src/presentation/pages/home/providers/get_articles_plus_notifier.dart';
import 'package:artemis_app/src/presentation/pages/home/widgets/articles_text.dart';
import 'package:artemis_app/src/presentation/providers/debouncer_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:artemis_app/l10n/app_localizations.dart';

class CustomSearchBar extends ConsumerWidget {
  static const double _emptyStatePadding = 24.0;
  static const double _emptyStateIconSize = 48.0;
  static const double _emptyStateSpacing = 16.0;
  static const double _emptyStateSmallSpacing = 8.0;
  static const double _emptyStateTitleFontSize = 16.0;
  static const double _emptyStateSubtitleFontSize = 14.0;
  static const double _suggestionItemPadding = 16.0;

  const CustomSearchBar({super.key, required this.favorites});

  final List<Article> favorites;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    
    return Expanded(
      child: SearchAnchor(
        builder: (_, controller) => SearchBar(
          controller: controller,
          onTap: () {
            ref
                .read(getArticlesPlusProvider.notifier)
                .loadInitialArticles(favorites);
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
                .getArticlesAndFavorites(query, cancelToken);
          });
        },
        viewOnClose: () {
          ref.invalidate(getArticlesPlusProvider);
        },
        suggestionsBuilder: (_, controller) {
          final articles = ref.watch(getArticlesPlusProvider);
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
            return [
              Padding(
                padding: const EdgeInsets.all(_emptyStatePadding),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.search_off,
                        size: _emptyStateIconSize,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                      const SizedBox(height: _emptyStateSpacing),
                      Text(
                        l10n.noResultsFound,
                        style: TextStyle(
                          fontSize: _emptyStateTitleFontSize,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                      const SizedBox(height: _emptyStateSmallSpacing),
                      Text(
                        currentQuery.isEmpty
                            ? l10n.startTypingToSearch
                            : l10n.tryDifferentSearchTerm,
                        style: TextStyle(
                          fontSize: _emptyStateSubtitleFontSize,
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          }

          return filteredArticles.map((article) {
            return InkWell(
              onTap: () {
                controller.closeView('');
                context.push(
                  '/details',
                  extra: DetailsParameters(article: article),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(_suggestionItemPadding),
                child: ArticlesText(
                  title: article.title,
                  domain: article.domain,
                  type: article.type.displayName,
                  isOa: article.openAccess,
                ),
              ),
            );
          });
        },
      ),
    );
  }
}
