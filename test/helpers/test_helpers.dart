import 'package:artemis_app/src/core/util/data_state.dart';
import 'package:artemis_app/src/domain/entity/article.dart';
import 'package:artemis_app/src/domain/entity/user.dart';

/// Creates a test Article with default values
Article createTestArticle({
  String? id,
  String? title,
  ArticleType? type,
  String? pageUrl,
  String? pdfUrl,
  int? year,
  List<String>? authors,
  List<String>? institutions,
  String? language,
  int? cites,
  int? citedBy,
  double? fwci,
  double? citationPercentile,
  List<String>? topics,
  int? relatedTo,
  double? apcPaid,
  List<String>? subfield,
  String? field,
  String? domain,
  bool? openAccess,
  bool? favorite,
}) {
  return Article(
    id: id ?? 'test-article-1',
    title: title ?? 'Test Article Title',
    type: type ?? ArticleType.article,
    pageUrl: pageUrl ?? 'https://example.com/article/1',
    pdfUrl: pdfUrl ?? 'https://example.com/article/1.pdf',
    year: year ?? 2024,
    authors: authors ?? ['Author One', 'Author Two'],
    institutions: institutions ?? ['Institution One'],
    language: language ?? 'en',
    cites: cites ?? 10,
    citedBy: citedBy ?? 20,
    fwci: fwci ?? 1.5,
    citationPercentile: citationPercentile ?? 75.0,
    topics: topics ?? ['Machine Learning', 'AI'],
    relatedTo: relatedTo ?? 5,
    apcPaid: apcPaid ?? 1000.0,
    subfield: subfield ?? ['Computer Science'],
    field: field ?? 'Computer Science',
    domain: domain ?? 'Computer Science',
    openAccess: openAccess ?? true,
    favorite: favorite ?? false,
  );
}

/// Creates a list of test Articles
List<Article> createTestArticles({int count = 3}) {
  return List.generate(
    count,
    (index) => createTestArticle(
      id: 'test-article-$index',
      title: 'Test Article Title $index',
      year: 2024 - index,
    ),
  );
}

/// Creates a test User with default values
User createTestUser({
  String? uid,
  String? email,
  String? displayName,
  String? photoUrl,
}) {
  return User(
    uid: uid ?? 'test-user-1',
    email: email ?? 'test@example.com',
    displayName: displayName ?? 'Test User',
    photoUrl: photoUrl ?? 'https://example.com/photo.jpg',
  );
}

/// Creates a DataSuccess for testing
DataSuccess<T> createDataSuccess<T>(T data) {
  return DataSuccess(data: data);
}

/// Creates a DataFailure for testing
DataFailure<T> createDataFailure<T>(Exception error) {
  return DataFailure(error: error);
}
