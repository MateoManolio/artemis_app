import 'package:artemis_app/src/presentation/pages/details/widgets/metric_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../helpers/widget_test_helpers.dart';

void main() {
  group('MetricCard Widget Tests', () {
    testWidgets('should display label and value', (tester) async {
      // Act
      await pumpApp(
        tester,
        const Scaffold(
          body: MetricCard(label: 'Citations', value: '150'),
        ),
      );

      // Assert
      expect(find.text('Citations'), findsOneWidget);
      expect(find.text('150'), findsOneWidget);
    });

    testWidgets('should have correct height', (tester) async {
      // Act
      await pumpApp(
        tester,
        const Scaffold(
          body: MetricCard(label: 'Test', value: '100'),
        ),
      );

      // Assert
      final container = tester.widget<Container>(find.byType(Container).first);
      expect(container.constraints?.maxHeight, equals(90.0));
    });

    testWidgets('should have rounded corners', (tester) async {
      // Act
      await pumpApp(
        tester,
        const Scaffold(
          body: MetricCard(label: 'Test', value: '100'),
        ),
      );

      // Assert
      final container = tester.widget<Container>(find.byType(Container).first);
      final decoration = container.decoration as BoxDecoration?;
      expect(decoration?.borderRadius, equals(BorderRadius.circular(12.0)));
    });

    testWidgets('should display value with bold styling', (tester) async {
      // Act
      await pumpApp(
        tester,
        const Scaffold(
          body: MetricCard(label: 'Citations', value: '150'),
        ),
      );

      // Assert
      final valueText = tester.widget<Text>(find.text('150'));
      expect(valueText.style?.fontWeight, equals(FontWeight.bold));
    });

    testWidgets('should have border and shadow', (tester) async {
      // Act
      await pumpApp(
        tester,
        const Scaffold(
          body: MetricCard(label: 'Test', value: '100'),
        ),
      );

      // Assert
      final container = tester.widget<Container>(find.byType(Container).first);
      final decoration = container.decoration as BoxDecoration?;
      expect(decoration?.border, isNotNull);
      expect(decoration?.boxShadow, isNotNull);
      expect(decoration?.boxShadow!.length, greaterThan(0));
    });

    testWidgets('should center content vertically', (tester) async {
      // Act
      await pumpApp(
        tester,
        const Scaffold(
          body: MetricCard(label: 'Test', value: '100'),
        ),
      );

      // Assert
      expect(find.byType(Column), findsOneWidget);
    });
  });
}
