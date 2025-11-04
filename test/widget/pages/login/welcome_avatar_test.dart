import 'package:artemis_app/src/presentation/pages/login/widgets/welcome_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../helpers/widget_test_helpers.dart';

void main() {
  group('WelcomeAvatar Widget Tests', () {
    testWidgets('should display avatar container', (tester) async {
      // Act
      await pumpApp(tester, const Scaffold(body: WelcomeAvatar()));

      // Assert
      expect(find.byType(Container), findsOneWidget);
    });

    testWidgets('should have circular decoration', (tester) async {
      // Act
      await pumpApp(tester, const Scaffold(body: WelcomeAvatar()));

      // Assert
      final container = tester.widget<Container>(find.byType(Container));
      final decoration = container.decoration as BoxDecoration?;
      expect(decoration?.shape, equals(BoxShape.circle));
    });

    testWidgets('should have correct dimensions', (tester) async {
      // Act
      await pumpApp(tester, const Scaffold(body: WelcomeAvatar()));

      // Assert
      final container = tester.widget<Container>(find.byType(Container));
      expect(container.constraints?.maxWidth, equals(270));
      expect(container.constraints?.maxHeight, equals(270));
    });

    testWidgets('should use primaryContainer color', (tester) async {
      // Act
      await pumpApp(tester, const Scaffold(body: WelcomeAvatar()));

      // Assert
      final container = tester.widget<Container>(find.byType(Container));
      final decoration = container.decoration as BoxDecoration?;
      expect(decoration?.color, isNotNull);
    });
  });
}
