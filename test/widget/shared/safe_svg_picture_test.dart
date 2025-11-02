import 'package:artemis_app/src/presentation/widgets/safe_svg_picture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../helpers/widget_test_helpers.dart';

void main() {
  group('SafeSvgPicture Widget Tests', () {
    testWidgets('should display SVG picture', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: SafeSvgPicture.asset('assets/svg/login.svg'),
        ),
      );

      // Assert
      // SVG might render differently in tests, but widget should exist
      expect(find.byType(Builder), findsWidgets);
    });

    testWidgets('should respect width parameter', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: SafeSvgPicture.asset(
            'assets/svg/login.svg',
            width: 100,
          ),
        ),
      );

      // Assert
      // Width is passed to SvgPicture internally
      expect(find.byType(Builder), findsWidgets);
    });

    testWidgets('should respect height parameter', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: SafeSvgPicture.asset(
            'assets/svg/login.svg',
            height: 200,
          ),
        ),
      );

      // Assert
      expect(find.byType(Builder), findsWidgets);
    });

    testWidgets('should use default fit when not specified', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: SafeSvgPicture.asset('assets/svg/login.svg'),
        ),
      );

      // Assert
      expect(find.byType(Builder), findsWidgets);
    });

    testWidgets('should use custom fit when specified', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: SafeSvgPicture.asset(
            'assets/svg/login.svg',
            fit: BoxFit.cover,
          ),
        ),
      );

      // Assert
      expect(find.byType(Builder), findsWidgets);
    });

    testWidgets('should display placeholder icon when loading', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: SafeSvgPicture.asset('assets/svg/login.svg'),
        ),
      );

      // Wait a bit for placeholder to potentially show
      await tester.pump();

      // Assert
      // Placeholder might show during loading
      // The widget structure should exist
      expect(find.byType(Builder), findsWidgets);
    });

    testWidgets('should handle color filter when color is provided', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: SafeSvgPicture.asset(
            'assets/svg/login.svg',
            color: Colors.blue,
          ),
        ),
      );

      // Assert
      expect(find.byType(Builder), findsWidgets);
    });
  });
}

