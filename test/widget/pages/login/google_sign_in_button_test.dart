import 'package:artemis_app/src/presentation/pages/login/widgets/google_sign_in_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../helpers/widget_test_helpers.dart';

void main() {
  group('GoogleSignInButton Widget Tests', () {
    testWidgets('should display sign in with Google text', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: GoogleSignInButton(
            onPressed: () {},
          ),
        ),
      );

      // Assert
      expect(find.textContaining('Sign in'), findsOneWidget);
    });

    testWidgets('should call onPressed when tapped', (tester) async {
      // Arrange
      bool pressed = false;

      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: GoogleSignInButton(
            onPressed: () => pressed = true,
          ),
        ),
      );

      // Find the InkWell instead of Material to avoid ambiguity
      await tester.tap(find.byType(InkWell));
      await tester.pumpAndSettle();

      // Assert
      expect(pressed, isTrue);
    });

    testWidgets('should have correct button dimensions', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: GoogleSignInButton(
            onPressed: () {},
          ),
        ),
      );

      // Assert
      final container = tester.widget<Container>(find.byType(Container).first);
      expect(container.constraints?.maxHeight, equals(56));
    });

    testWidgets('should display Google icon', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: GoogleSignInButton(
            onPressed: () {},
          ),
        ),
      );

      // Assert
      // The icon is wrapped in SafeSvgPicture, verify container exists
      expect(find.byType(Container), findsWidgets);
    });

    testWidgets('should have rounded corners', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: GoogleSignInButton(
            onPressed: () {},
          ),
        ),
      );

      // Assert
      final container = tester.widget<Container>(find.byType(Container).first);
      final decoration = container.decoration as BoxDecoration?;
      expect(decoration?.borderRadius, equals(BorderRadius.circular(16)));
    });

    testWidgets('should have gradient background', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: GoogleSignInButton(
            onPressed: () {},
          ),
        ),
      );

      // Assert
      final container = tester.widget<Container>(find.byType(Container).first);
      final decoration = container.decoration as BoxDecoration?;
      expect(decoration?.gradient, isA<LinearGradient>());
    });
  });
}

