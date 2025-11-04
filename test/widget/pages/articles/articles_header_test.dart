import 'package:artemis_app/src/presentation/pages/articles/widgets/articles_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../helpers/widget_test_helpers.dart';

void main() {
  group('ArticlesHeader Widget Tests', () {
    testWidgets('should display search bar', (tester) async {
      // Act
      await pumpApp(tester, const Scaffold(body: ArticlesHeader()));

      // Assert
      expect(find.byType(TextField), findsOneWidget);
    });

    testWidgets('should display filters button', (tester) async {
      // Act
      await pumpApp(tester, const Scaffold(body: ArticlesHeader()));

      // Assert
      // The text is localized, so we check for the button type instead
      expect(find.byType(OutlinedButton), findsOneWidget);
    });

    testWidgets('should call onSearchChanged when text changes', (
      tester,
    ) async {
      // Arrange
      String? changedValue;

      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: ArticlesHeader(
            onSearchChanged: (value) => changedValue = value,
          ),
        ),
      );

      await tester.enterText(find.byType(TextField), 'search query');
      await tester.pumpAndSettle();

      // Assert
      expect(changedValue, equals('search query'));
    });

    testWidgets('should call onFiltersPressed when filters button is tapped', (
      tester,
    ) async {
      // Arrange
      bool filtersPressed = false;

      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: ArticlesHeader(onFiltersPressed: () => filtersPressed = true),
        ),
      );

      await tester.tap(find.byType(OutlinedButton));
      await tester.pumpAndSettle();

      // Assert
      expect(filtersPressed, isTrue);
    });

    testWidgets('should use search controller when provided', (tester) async {
      // Arrange
      final controller = TextEditingController(text: 'initial');

      // Act
      await pumpApp(
        tester,
        Scaffold(body: ArticlesHeader(searchController: controller)),
      );

      // Assert
      expect(find.text('initial'), findsOneWidget);
    });

    testWidgets('should have correct layout with Row', (tester) async {
      // Act
      await pumpApp(tester, const Scaffold(body: ArticlesHeader()));

      // Assert
      expect(find.byType(Row), findsWidgets);
    });
  });
}
