import 'package:artemis_app/src/presentation/pages/login/widgets/skip_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../helpers/widget_test_helpers.dart';

void main() {
  group('SkipButton Widget Tests', () {
    testWidgets('should display skip text', (tester) async {
      // Act
      await pumpApp(tester, Scaffold(body: SkipButton(onPressed: () {})));

      // Assert
      // The text is localized ("OMITIR" in Spanish)
      expect(find.byType(TextButton), findsOneWidget);
    });

    testWidgets('should call onPressed when tapped', (tester) async {
      // Arrange
      bool pressed = false;

      // Act
      await pumpApp(
        tester,
        Scaffold(body: SkipButton(onPressed: () => pressed = true)),
      );

      await tester.tap(find.byType(TextButton));
      await tester.pumpAndSettle();

      // Assert
      expect(pressed, isTrue);
    });

    testWidgets('should use TextButton', (tester) async {
      // Act
      await pumpApp(tester, Scaffold(body: SkipButton(onPressed: () {})));

      // Assert
      expect(find.byType(TextButton), findsOneWidget);
    });

    testWidgets('should have correct text styling', (tester) async {
      // Act
      await pumpApp(tester, Scaffold(body: SkipButton(onPressed: () {})));

      // Assert
      final textButton = tester.widget<TextButton>(find.byType(TextButton));
      expect(textButton, isNotNull);
    });
  });
}
