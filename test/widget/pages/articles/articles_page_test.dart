import 'package:artemis_app/src/domain/entity/article.dart';
import 'package:artemis_app/src/presentation/pages/articles/articles_page.dart';
import 'package:artemis_app/src/presentation/pages/articles/providers/articles_data_provider.dart';
import 'package:artemis_app/src/presentation/providers/articles_filters_provider.dart';
import 'package:artemis_app/src/presentation/providers/debouncer_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../helpers/widget_test_helpers.dart';

// Mock ArticlesData that doesn't make API calls
class MockArticlesData extends ArticlesData {
  @override
  AsyncValue<List<Article>> build() {
    return const AsyncValue<List<Article>>.data([]);
  }

  @override
  Future<void> fetchArticles([bool isRefresh = true]) async {
    // Do nothing to avoid API calls in tests
  }
}

void main() {
  group('ArticlesPage Widget Tests', () {
    testWidgets('should render ArticlesPage widget', (tester) async {
      // Arrange & Act
      await pumpApp(
        tester,
        const ArticlesPage(),
        overrides: [
          // Override with mock that doesn't make API calls
          articlesDataProvider.overrideWith(MockArticlesData.new),
          debouncerProvider.overrideWith(Debouncer.new),
          articlesFiltersNotifierProvider.overrideWith(ArticlesFiltersNotifier.new),
        ],
      );
      // Wait for post-frame callback to complete
      await tester.pump();
      await tester.pump();

      // Assert
      // Note: Full widget testing requires proper provider setup
      // This is a basic structure test
      expect(find.byType(ArticlesPage), findsOneWidget);
    });

    testWidgets('should have app bar with title', (tester) async {
      // Arrange & Act
      await pumpApp(
        tester,
        const ArticlesPage(),
        overrides: [
          // Override with mock that doesn't make API calls
          articlesDataProvider.overrideWith(MockArticlesData.new),
          debouncerProvider.overrideWith(Debouncer.new),
          articlesFiltersNotifierProvider.overrideWith(ArticlesFiltersNotifier.new),
        ],
      );
      // Wait for post-frame callback and settle
      await tester.pump();
      await tester.pump();
      await tester.pumpAndSettle();

      // Assert
      expect(find.byType(AppBar), findsOneWidget);
    });
  });
}

