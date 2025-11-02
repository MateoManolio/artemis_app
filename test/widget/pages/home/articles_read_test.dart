import 'package:artemis_app/src/presentation/pages/home/widgets/articles_read.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../helpers/widget_test_helpers.dart';

void main() {
  group('ArticlesRead Widget Tests', () {
    testWidgets('should display articles read count correctly', (tester) async {
      // Arrange
      const articlesRead = 5;
      const weekGoal = 10;

      // Act
      await pumpApp(
        tester,
        const ArticlesRead(
          articlesRead: articlesRead,
          weekGoal: weekGoal,
        ),
      );

      // Assert
      expect(find.textContaining('$articlesRead'), findsOneWidget);
    });

    testWidgets('should display progress indicator with correct value', (tester) async {
      // Arrange
      const articlesRead = 3;
      const weekGoal = 10;

      // Act
      await pumpApp(
        tester,
        const ArticlesRead(
          articlesRead: articlesRead,
          weekGoal: weekGoal,
        ),
      );

      // Assert
      final progressIndicator = tester.widget<LinearProgressIndicator>(
        find.byType(LinearProgressIndicator),
      );
      expect(progressIndicator.value, closeTo(0.3, 0.01)); // 3/10 = 0.3
    });

    testWidgets('should handle progress greater than 100%', (tester) async {
      // Arrange
      const articlesRead = 15;
      const weekGoal = 10;

      // Act
      await pumpApp(
        tester,
        const ArticlesRead(
          articlesRead: articlesRead,
          weekGoal: weekGoal,
        ),
      );

      // Assert
      final progressIndicator = tester.widget<LinearProgressIndicator>(
        find.byType(LinearProgressIndicator),
      );
      expect(progressIndicator.value, greaterThan(1.0));
    });

    testWidgets('should display correct styling with Card', (tester) async {
      // Arrange
      const articlesRead = 2;
      const weekGoal = 7;

      // Act
      await pumpApp(
        tester,
        const ArticlesRead(
          articlesRead: articlesRead,
          weekGoal: weekGoal,
        ),
      );

      // Assert
      expect(find.byType(Card), findsOneWidget);
      expect(find.byType(LinearProgressIndicator), findsOneWidget);
    });

    testWidgets('should handle zero articles read', (tester) async {
      // Arrange
      const articlesRead = 0;
      const weekGoal = 5;

      // Act
      await pumpApp(
        tester,
        const ArticlesRead(
          articlesRead: articlesRead,
          weekGoal: weekGoal,
        ),
      );

      // Assert
      final progressIndicator = tester.widget<LinearProgressIndicator>(
        find.byType(LinearProgressIndicator),
      );
      expect(progressIndicator.value, equals(0.0));
      expect(find.textContaining('0'), findsOneWidget);
    });
  });
}

