import 'package:artemis_app/src/core/interfaces/i_usecase.dart';
import 'package:artemis_app/src/domain/entity/article.dart';
import 'package:artemis_app/src/presentation/providers/articles_filters_provider.dart';

/// Use case to search and filter favorites locally
class SearchFavoritesUsecase
    implements IUseCaseQuery<List<Article>, SearchFavoritesParams> {
  SearchFavoritesUsecase();

  @override
  Future<List<Article>> call(SearchFavoritesParams params) async {
    List<Article> filtered = params.favorites;

    // Apply text search filter
    if (params.query.isNotEmpty) {
      filtered = _filterByTextQuery(filtered, params.query);
    }

    // Apply ArticlesFilters
    filtered = _applyArticlesFilters(filtered, params.filters);

    return filtered;
  }

  /// Filters articles by text query (title, authors, domain, type)
  List<Article> _filterByTextQuery(List<Article> articles, String query) {
    final queryLower = query.toLowerCase().trim();

    if (queryLower.isEmpty) {
      return articles;
    }

    return articles.where((article) {
      final titleLower = article.title.toLowerCase();
      final domainLower = article.domain.toLowerCase();
      final typeLower = article.type.displayName.toLowerCase();
      final authorsLower = article.authors
          .map((a) => a.toLowerCase())
          .join(' ');

      // Split query into words for multi-word search
      final words = queryLower.split(' ').where((w) => w.isNotEmpty);

      // Check if any word matches in title, domain, type, or authors
      return words.any(
        (word) =>
            titleLower.split(' ').any((w) => w.startsWith(word)) ||
            domainLower.split(' ').any((w) => w.startsWith(word)) ||
            typeLower.split(' ').any((w) => w.startsWith(word)) ||
            authorsLower.split(' ').any((w) => w.startsWith(word)) ||
            titleLower.contains(word),
      );
    }).toList();
  }

  /// Applies ArticlesFilters to the list of articles
  List<Article> _applyArticlesFilters(
    List<Article> articles,
    ArticlesFilters filters,
  ) {
    List<Article> filtered = articles;

    // Filter by publication year range
    if (filters.fromYear != null) {
      filtered = filtered.where((article) {
        return article.year >= filters.fromYear!;
      }).toList();
    }

    if (filters.toYear != null) {
      filtered = filtered.where((article) {
        return article.year <= filters.toYear!;
      }).toList();
    }

    // Filter by article types
    if (filters.types != null && filters.types!.isNotEmpty) {
      filtered = filtered.where((article) {
        return filters.types!.contains(article.type.name);
      }).toList();
    }

    // Filter by open access
    if (filters.isOa != null) {
      filtered = filtered.where((article) {
        return article.openAccess == filters.isOa;
      }).toList();
    }

    // Filter by open access status
    if (filters.openAccessStatus != null &&
        filters.openAccessStatus!.isNotEmpty) {
      filtered = filtered.where((article) {
        return article.openAccess;
      }).toList();
    }

    return filtered;
  }
}

/// Parameters for searching favorites
class SearchFavoritesParams {
  final List<Article> favorites;
  final String query;
  final ArticlesFilters filters;

  SearchFavoritesParams({
    required this.favorites,
    required this.query,
    required this.filters,
  });
}
