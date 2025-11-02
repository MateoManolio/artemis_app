import 'package:artemis_app/src/presentation/pages/articles/widgets/article_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../helpers/widget_test_helpers.dart';

void main() {
  group('ArticleCard Widget Tests', () {
    testWidgets('should display article title', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: ArticleCard(
            title: 'Test Article Title',
            authors: 'John Doe, Jane Smith',
            type: 'Article',
            year: 2024,
            onTap: () {},
          ),
        ),
      );

      // Assert
      expect(find.text('Test Article Title'), findsOneWidget);
    });

    testWidgets('should display authors', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: ArticleCard(
            title: 'Test Article',
            authors: 'John Doe, Jane Smith',
            type: 'Article',
            year: 2024,
            onTap: () {},
          ),
        ),
      );

      // Assert
      expect(find.text('John Doe, Jane Smith'), findsOneWidget);
    });

    testWidgets('should display type and year', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: ArticleCard(
            title: 'Test Article',
            authors: 'John Doe',
            type: 'Journal Article',
            year: 2023,
            onTap: () {},
          ),
        ),
      );

      // Assert
      expect(find.text('Journal Article · 2023'), findsOneWidget);
    });

    testWidgets('should display open access badge when isOpenAccess is true', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: ArticleCard(
            title: 'Test Article',
            authors: 'John Doe',
            type: 'Article',
            year: 2024,
            isOpenAccess: true,
            onTap: () {},
          ),
        ),
      );

      // Assert
      expect(find.textContaining('Open Access'), findsOneWidget);
    });

    testWidgets('should not display open access badge when isOpenAccess is false', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: ArticleCard(
            title: 'Test Article',
            authors: 'John Doe',
            type: 'Article',
            year: 2024,
            isOpenAccess: false,
            onTap: () {},
          ),
        ),
      );

      // Assert
      expect(find.textContaining('Open Access'), findsNothing);
    });

    testWidgets('should call onTap when card is tapped', (tester) async {
      // Arrange
      bool tapped = false;

      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: ArticleCard(
            title: 'Test Article',
            authors: 'John Doe',
            type: 'Article',
            year: 2024,
            onTap: () => tapped = true,
          ),
        ),
      );

      await tester.tap(find.byType(InkWell));
      await tester.pumpAndSettle();

      // Assert
      expect(tapped, isTrue);
    });

    testWidgets('should use Card styling', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: ArticleCard(
            title: 'Test Article',
            authors: 'John Doe',
            type: 'Article',
            year: 2024,
            onTap: () {},
          ),
        ),
      );

      // Assert
      expect(find.byType(Card), findsOneWidget);
    });

    testWidgets('should handle null onTap', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: const ArticleCard(
            title: 'Test Article',
            authors: 'John Doe',
            type: 'Article',
            year: 2024,
            onTap: null,
          ),
        ),
      );

      // Assert
      expect(find.text('Test Article'), findsOneWidget);
    });
  });
}

