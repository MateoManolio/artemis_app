import 'package:artemis_app/src/data/models/db/article_db_model.dart';
import 'package:artemis_app/src/data/repository/favorites_repository_impl.dart';
import 'package:artemis_app/src/domain/entity/article.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import '../../helpers/mocks.dart';
import '../../helpers/test_helpers.dart';
import '../../fixtures/articles_fixture.dart';

void main() {
  late FavoritesRepositoryImpl repository;
  late MockDbDatasource mockDatasource;

  setUpAll(() {
    registerFallbackValue(ArticleDbModel.fromDomain(createTestArticle()));
  });

  setUp(() {
    mockDatasource = MockDbDatasource();
    repository = FavoritesRepositoryImpl(dbDataSource: mockDatasource);
    
    // Setup default return values for methods that return Future<void>
    when(() => mockDatasource.insertArticle(any())).thenAnswer((_) async {});
    when(() => mockDatasource.deleteArticle(any())).thenAnswer((_) async {});
  });

  group('FavoritesRepositoryImpl', () {
    group('addFavorite', () {
      test('should call datasource insertArticle with ArticleDbModel', () {
        // Arrange
        final article = ArticlesFixture.defaultArticles().first;

        // Act
        repository.addFavorite(article);

        // Assert
        verify(() => mockDatasource.insertArticle(any(that: isA<ArticleDbModel>())))
            .called(1);
      });
    });

    group('removeFavorite', () {
      test('should call datasource deleteArticle with correct id', () {
        // Arrange
        const articleId = 'W4414161455';

        // Act
        repository.removeFavorite(articleId);

        // Assert
        verify(() => mockDatasource.deleteArticle(articleId)).called(1);
      });
    });

    group('getAllFavorites', () {
      test('should return list of favorite articles', () async {
        // Arrange
        final dbModels = ArticlesFixture.defaultArticles()
            .map((article) {
              final dbModel = ArticleDbModel.fromDomain(article);
              dbModel.favorite = true;
              return dbModel;
            })
            .toList();

        when(() => mockDatasource.getAllFavorites())
            .thenAnswer((_) async => dbModels);

        // Act
        final result = await repository.getAllFavorites();

        // Assert
        expect(result, isA<List<Article>>());
        expect(result.length, equals(3));
        expect(result.every((article) => article.favorite), isTrue);
        verify(() => mockDatasource.getAllFavorites()).called(1);
      });

      test('should return empty list when no favorites', () async {
        // Arrange
        when(() => mockDatasource.getAllFavorites())
            .thenAnswer((_) async => []);

        // Act
        final result = await repository.getAllFavorites();

        // Assert
        expect(result, isEmpty);
      });
    });

    group('toggleFavorite', () {
      test('should call datasource toggleFavorite with correct parameters', () async {
        // Arrange
        const articleId = 'W4414161455';
        const isFavorite = true;

        when(() => mockDatasource.toggleFavorite(articleId, isFavorite))
            .thenAnswer((_) async => {});

        // Act
        await repository.toggleFavorite(articleId, isFavorite);

        // Assert
        verify(() => mockDatasource.toggleFavorite(articleId, isFavorite)).called(1);
      });
    });

    group('updateArticle', () {
      test('should call datasource updateArticle with ArticleDbModel', () async {
        // Arrange
        final article = ArticlesFixture.defaultArticles().first;

        when(() => mockDatasource.updateArticle(any(that: isA<ArticleDbModel>())))
            .thenAnswer((_) async => {});

        // Act
        await repository.updateArticle(article);

        // Assert
        verify(() => mockDatasource.updateArticle(any(that: isA<ArticleDbModel>())))
            .called(1);
      });
    });
  });
}

