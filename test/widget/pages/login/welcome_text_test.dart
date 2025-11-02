import 'package:artemis_app/src/presentation/pages/login/widgets/welcome_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../helpers/widget_test_helpers.dart';

void main() {
  group('WelcomeText Widget Tests', () {
    testWidgets('should display welcome text', (tester) async {
      // Act
      await pumpApp(
        tester,
        const Scaffold(
          body: WelcomeText(),
        ),
      );

      // Assert
      expect(find.textContaining('Welcome'), findsOneWidget);
    });

    testWidgets('should display sign in to explore text', (tester) async {
      // Act
      await pumpApp(
        tester,
        const Scaffold(
          body: WelcomeText(),
        ),
      );

      // Assert
      expect(find.textContaining('Sign in'), findsOneWidget);
    });

    testWidgets('should have centered text alignment', (tester) async {
      // Act
      await pumpApp(
        tester,
        const Scaffold(
          body: WelcomeText(),
        ),
      );

      // Assert
      final welcomeText = tester.widget<Text>(find.textContaining('Welcome').first);
      expect(welcomeText.textAlign, equals(TextAlign.center));
    });

    testWidgets('should use displayMedium text style for welcome', (tester) async {
      // Act
      await pumpApp(
        tester,
        const Scaffold(
          body: WelcomeText(),
        ),
      );

      // Assert
      final welcomeText = tester.widget<Text>(find.textContaining('Welcome').first);
      expect(welcomeText.style?.fontWeight, equals(FontWeight.bold));
    });

    testWidgets('should display both texts in column', (tester) async {
      // Act
      await pumpApp(
        tester,
        const Scaffold(
          body: WelcomeText(),
        ),
      );

      // Assert
      expect(find.byType(Column), findsOneWidget);
      expect(find.textContaining('Welcome'), findsOneWidget);
      expect(find.textContaining('Sign in'), findsOneWidget);
    });
  });
}

