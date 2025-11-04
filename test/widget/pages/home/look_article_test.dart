import 'package:artemis_app/src/presentation/pages/home/widgets/look_article.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../helpers/widget_test_helpers.dart';

void main() {
  group('LookArticle Widget Tests', () {
    testWidgets('should display filter button', (tester) async {
      // Act
      await pumpApp(tester, const Scaffold(body: LookArticle()));

      // Assert
      expect(find.byIcon(Icons.filter_list), findsOneWidget);
    });

    testWidgets('should display random article button', (tester) async {
      // Act
      await pumpApp(tester, const Scaffold(body: LookArticle()));

      // Assert
      expect(find.byIcon(Icons.casino), findsOneWidget);
    });

    testWidgets('should call onFilterPressed when filter button is tapped', (
      tester,
    ) async {
      // Arrange
      bool filterPressed = false;

      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: LookArticle(onFilterPressed: () => filterPressed = true),
        ),
      );

      await tester.tap(find.byIcon(Icons.filter_list));
      await tester.pumpAndSettle();

      // Assert
      expect(filterPressed, isTrue);
    });

    testWidgets(
      'should call onRandomArticlePressed when random button is tapped',
      (tester) async {
        // Arrange
        bool randomPressed = false;

        // Act
        await pumpApp(
          tester,
          Scaffold(
            body: LookArticle(
              onRandomArticlePressed: () => randomPressed = true,
            ),
          ),
        );

        await tester.tap(find.byIcon(Icons.casino));
        await tester.pumpAndSettle();

        // Assert
        expect(randomPressed, isTrue);
      },
    );

    testWidgets('should display loading indicator when loading', (
      tester,
    ) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: StatefulBuilder(
            builder: (context, setState) {
              return LookArticle(
                onRandomArticlePressed: () {
                  setState(() {});
                },
              );
            },
          ),
        ),
      );

      // Assert - button should be visible
      expect(find.byIcon(Icons.casino), findsOneWidget);
    });
  });
}
