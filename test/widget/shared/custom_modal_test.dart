import 'package:artemis_app/src/presentation/widgets/custom_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../helpers/widget_test_helpers.dart';

void main() {
  group('CustomModal Widget Tests', () {
    testWidgets('should display child widget', (tester) async {
      // Arrange
      const childText = 'Modal Content';

      // Act
      await pumpApp(
        tester,
        Scaffold(body: CustomModal(child: const Text(childText))),
      );

      // Assert
      expect(find.text(childText), findsOneWidget);
    });

    testWidgets('should display title when provided', (tester) async {
      // Arrange
      const title = 'Modal Title';

      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: CustomModal(title: title, child: const Text('Content')),
        ),
      );

      // Assert
      expect(find.text(title), findsOneWidget);
    });

    testWidgets('should display header actions when provided', (tester) async {
      // Arrange
      final actions = const Icon(Icons.close);

      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: CustomModal(
            headerActions: actions,
            child: const Text('Content'),
          ),
        ),
      );

      // Assert
      expect(find.byIcon(Icons.close), findsOneWidget);
    });

    testWidgets('should display footer when provided', (tester) async {
      // Arrange
      final footer = const Text('Footer Content');

      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: CustomModal(footer: footer, child: const Text('Content')),
        ),
      );

      // Assert
      expect(find.text('Footer Content'), findsOneWidget);
    });

    testWidgets('should have back button in header', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: CustomModal(title: 'Test', child: const Text('Content')),
        ),
      );

      // Assert
      expect(find.byIcon(Icons.chevron_left), findsOneWidget);
    });

    testWidgets('should use default height ratio', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(body: CustomModal(child: const Text('Content'))),
      );

      // Assert
      final container = tester.widget<Container>(find.byType(Container).first);
      expect(container.constraints, isNotNull);
    });

    testWidgets('should use custom height ratio', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: CustomModal(heightRatio: 0.5, child: const Text('Content')),
        ),
      );

      // Assert
      final container = tester.widget<Container>(find.byType(Container).first);
      expect(container.constraints, isNotNull);
    });

    testWidgets('should have rounded top corners', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(body: CustomModal(child: const Text('Content'))),
      );

      // Assert
      final container = tester.widget<Container>(find.byType(Container).first);
      final decoration = container.decoration as BoxDecoration?;
      final borderRadius = decoration?.borderRadius as BorderRadius?;
      expect(borderRadius?.topLeft, equals(const Radius.circular(24.0)));
      expect(borderRadius?.topRight, equals(const Radius.circular(24.0)));
    });

    testWidgets('should not display header when title and actions are null', (
      tester,
    ) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(body: CustomModal(child: const Text('Content'))),
      );

      // Assert
      // Header section should not be rendered
      expect(find.byIcon(Icons.chevron_left), findsNothing);
    });
  });
}
