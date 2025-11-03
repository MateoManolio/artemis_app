import 'package:artemis_app/src/presentation/pages/home/widgets/articles_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../helpers/widget_test_helpers.dart';

void main() {
  group('ArticlesText Widget Tests', () {
    testWidgets('should display article title', (tester) async {
      // Arrange
      const title = 'Test Article Title';
      const domain = 'Computer Science';
      const type = 'Article';
      const isOa = false;

      // Act
      await pumpApp(
        tester,
        const ArticlesText(
          title: title,
          domain: domain,
          type: type,
          isOa: isOa,
        ),
      );

      // Assert
      expect(find.text(title), findsOneWidget);
    });

    testWidgets('should display domain and type', (tester) async {
      // Arrange
      const title = 'Test Article';
      const domain = 'Machine Learning';
      const type = 'Journal Article';
      const isOa = false;

      // Act
      await pumpApp(
        tester,
        const ArticlesText(
          title: title,
          domain: domain,
          type: type,
          isOa: isOa,
        ),
      );

      // Assert
      expect(find.text(domain), findsOneWidget);
      expect(find.text(type), findsOneWidget);
    });

    testWidgets('should display open access icon when isOa is true', (tester) async {
      // Arrange
      const title = 'Open Access Article';
      const domain = 'Science';
      const type = 'Article';
      const isOa = true;

      // Act
      await pumpApp(
        tester,
        const ArticlesText(
          title: title,
          domain: domain,
          type: type,
          isOa: isOa,
        ),
      );

      // Assert
      expect(find.byIcon(Icons.check_circle), findsOneWidget);
    });

    testWidgets('should not display open access icon when isOa is false', (tester) async {
      // Arrange
      const title = 'Closed Access Article';
      const domain = 'Science';
      const type = 'Article';
      const isOa = false;

      // Act
      await pumpApp(
        tester,
        const ArticlesText(
          title: title,
          domain: domain,
          type: type,
          isOa: isOa,
        ),
      );

      // Assert
      expect(find.byIcon(Icons.check_circle), findsNothing);
    });

    testWidgets('should handle long titles with ellipsis', (tester) async {
      // Arrange
      const title = 'This is a very long article title that should be truncated with ellipsis when it exceeds the maximum number of lines allowed';
      const domain = 'Test Domain';
      const type = 'Article';
      const isOa = false;

      // Act
      await pumpApp(
        tester,
        const ArticlesText(
          title: title,
          domain: domain,
          type: type,
          isOa: isOa,
        ),
      );

      // Assert
      final textWidget = tester.widget<Text>(find.text(title));
      expect(textWidget.maxLines, equals(2));
      expect(textWidget.overflow, equals(TextOverflow.ellipsis));
    });

    testWidgets('should use correct styling for title', (tester) async {
      // Arrange
      const title = 'Styled Title';
      const domain = 'Domain';
      const type = 'Type';
      const isOa = false;

      // Act
      await pumpApp(
        tester,
        const ArticlesText(
          title: title,
          domain: domain,
          type: type,
          isOa: isOa,
        ),
      );

      // Assert
      final titleText = tester.widget<Text>(find.text(title));
      expect(titleText.style?.fontWeight, equals(FontWeight.bold));
      // MaterialApp default theme uses 16.0 for titleMedium, not 18.0
      expect(titleText.style?.fontSize, equals(16.0));
    });
  });
}

