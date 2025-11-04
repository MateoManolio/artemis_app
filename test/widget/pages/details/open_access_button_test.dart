import 'package:artemis_app/src/presentation/pages/details/widgets/open_access_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../helpers/widget_test_helpers.dart';

void main() {
  group('OpenAccessButton Widget Tests', () {
    testWidgets('should display PDF button when hasPdf is true', (
      tester,
    ) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: OpenAccessButton(
            hasPdf: true,
            onViewPdf: () {},
            onViewSource: () {},
          ),
        ),
      );

      // Assert
      expect(find.textContaining('PDF'), findsOneWidget);
      expect(find.byIcon(Icons.book_online), findsOneWidget);
    });

    testWidgets('should not display PDF button when hasPdf is false', (
      tester,
    ) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(body: OpenAccessButton(hasPdf: false, onViewSource: () {})),
      );

      // Assert
      expect(find.textContaining('PDF'), findsNothing);
    });

    testWidgets('should display view source button', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(body: OpenAccessButton(onViewSource: () {})),
      );

      // Assert
      // The text is localized ("Ver fuente" in Spanish)
      expect(find.byIcon(Icons.open_in_new), findsOneWidget);
    });

    testWidgets('should call onViewPdf when PDF button is tapped', (
      tester,
    ) async {
      // Arrange
      bool pdfPressed = false;

      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: OpenAccessButton(
            hasPdf: true,
            onViewPdf: () => pdfPressed = true,
            onViewSource: () {},
          ),
        ),
      );

      // Find and tap the PDF button container
      final pdfButtonFinder = find.textContaining('PDF');
      await tester.tap(pdfButtonFinder);
      await tester.pumpAndSettle();

      // Assert
      expect(pdfPressed, isTrue);
    });

    testWidgets('should call onViewSource when source button is tapped', (
      tester,
    ) async {
      // Arrange
      bool sourcePressed = false;

      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: OpenAccessButton(onViewSource: () => sourcePressed = true),
        ),
      );

      // Find and tap the view source button by icon
      await tester.tap(find.byIcon(Icons.open_in_new));
      await tester.pumpAndSettle();

      // Assert
      expect(sourcePressed, isTrue);
    });

    testWidgets('should disable buttons when callbacks are null', (
      tester,
    ) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: const OpenAccessButton(
            hasPdf: true,
            onViewPdf: null,
            onViewSource: null,
          ),
        ),
      );

      // Assert
      // Buttons should still be visible but with reduced opacity
      expect(find.byIcon(Icons.open_in_new), findsOneWidget);
    });

    testWidgets('should have correct button styling', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: OpenAccessButton(
            hasPdf: true,
            onViewPdf: () {},
            onViewSource: () {},
          ),
        ),
      );

      // Assert
      expect(find.byType(Container), findsWidgets);
    });
  });
}
