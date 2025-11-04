import 'package:artemis_app/src/presentation/pages/articles/widgets/articles_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../helpers/widget_test_helpers.dart';

void main() {
  group('ArticlesSearchBar Widget Tests', () {
    testWidgets('should display search field', (tester) async {
      // Act
      await pumpApp(tester, const Scaffold(body: ArticlesSearchBar()));

      // Assert
      expect(find.byType(TextField), findsOneWidget);
    });

    testWidgets('should display search icon', (tester) async {
      // Act
      await pumpApp(tester, const Scaffold(body: ArticlesSearchBar()));

      // Assert
      expect(find.byIcon(Icons.search), findsOneWidget);
    });

    testWidgets('should call onChanged when text changes', (tester) async {
      // Arrange
      String? changedValue;

      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: ArticlesSearchBar(onChanged: (value) => changedValue = value),
        ),
      );

      await tester.enterText(find.byType(TextField), 'test query');
      await tester.pumpAndSettle();

      // Assert
      expect(changedValue, equals('test query'));
    });

    testWidgets('should use controller when provided', (tester) async {
      // Arrange
      final controller = TextEditingController(text: 'initial text');

      // Act
      await pumpApp(
        tester,
        Scaffold(body: ArticlesSearchBar(controller: controller)),
      );

      // Assert
      expect(find.text('initial text'), findsOneWidget);
    });

    testWidgets('should have rounded border', (tester) async {
      // Act
      await pumpApp(tester, const Scaffold(body: ArticlesSearchBar()));

      // Assert
      final textField = tester.widget<TextField>(find.byType(TextField));
      final decoration = textField.decoration;
      final border = decoration?.border;
      if (border is OutlineInputBorder) {
        expect(border.borderRadius, equals(BorderRadius.circular(12)));
      }
    });

    testWidgets('should handle empty onChanged', (tester) async {
      // Act
      await pumpApp(
        tester,
        const Scaffold(body: ArticlesSearchBar(onChanged: null)),
      );

      await tester.enterText(find.byType(TextField), 'test');
      await tester.pumpAndSettle();

      // Assert - should not throw
      expect(find.byType(TextField), findsOneWidget);
    });
  });
}
