import 'package:artemis_app/src/domain/entity/article.dart';
import '../helpers/test_helpers.dart';

/// Predefined test articles for use in tests
class ArticlesFixture {
  /// Returns a list of default test articles
  static List<Article> defaultArticles() {
    return [
      createTestArticle(
        id: 'W4414161455',
        title: 'Machine Learning for Scientific Discovery',
        year: 2024,
        authors: ['John Doe', 'Jane Smith'],
        topics: ['Machine Learning', 'Artificial Intelligence'],
        openAccess: true,
      ),
      createTestArticle(
        id: 'W4414161456',
        title: 'Deep Learning Applications in Medicine',
        year: 2023,
        authors: ['Alice Johnson', 'Bob Williams'],
        topics: ['Deep Learning', 'Medicine'],
        openAccess: false,
      ),
      createTestArticle(
        id: 'W4414161457',
        title: 'Quantum Computing Advances',
        year: 2024,
        authors: ['Charlie Brown'],
        topics: ['Quantum Computing', 'Physics'],
        openAccess: true,
      ),
    ];
  }

  /// Returns a single article with favorite set to true
  static Article favoriteArticle() {
    return createTestArticle(
      id: 'W4414161458',
      title: 'Favorite Article',
      favorite: true,
    );
  }

  /// Returns an article with specific properties for testing
  static Article customArticle({
    String? id,
    String? title,
    ArticleType? type,
    bool? openAccess,
    bool? favorite,
    int? year,
  }) {
    return createTestArticle(
      id: id,
      title: title,
      type: type,
      openAccess: openAccess,
      favorite: favorite,
      year: year,
    );
  }

  /// Returns an empty list
  static List<Article> emptyList() {
    return [];
  }
}

