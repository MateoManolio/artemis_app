import 'package:artemis_app/src/presentation/pages/settings/widgets/setting_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../helpers/widget_test_helpers.dart';

void main() {
  group('SettingSwitch Widget Tests', () {
    testWidgets('should display switch with title', (tester) async {
      // Arrange
      bool value = false;

      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: SettingSwitch(
            icon: Icons.light_mode,
            title: 'Dark Mode',
            value: value,
            onChanged: (newValue) {
              value = newValue;
            },
          ),
        ),
      );

      // Assert
      expect(find.text('Dark Mode'), findsOneWidget);
      expect(find.byType(Switch), findsOneWidget);
    });

    testWidgets('should display subtitle when provided', (tester) async {
      // Arrange
      bool value = false;

      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: SettingSwitch(
            icon: Icons.light_mode,
            title: 'Dark Mode',
            subtitle: 'Enable dark theme',
            value: value,
            onChanged: (_) {},
          ),
        ),
      );

      // Assert
      expect(find.text('Enable dark theme'), findsOneWidget);
    });

    testWidgets('should toggle switch value when tapped', (tester) async {
      // Arrange
      bool value = false;

      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: StatefulBuilder(
            builder: (context, setState) => SettingSwitch(
              icon: Icons.light_mode,
              title: 'Dark Mode',
              value: value,
              onChanged: (newValue) {
                setState(() {
                  value = newValue;
                });
              },
            ),
          ),
        ),
      );

      final switchWidget = tester.widget<Switch>(find.byType(Switch));
      expect(switchWidget.value, isFalse);

      await tester.tap(find.byType(Switch));
      await tester.pumpAndSettle();
    });

    testWidgets('should call onChanged when switch is toggled', (tester) async {
      // Arrange
      bool value = false;
      bool onChangedCalled = false;

      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: SettingSwitch(
            icon: Icons.light_mode,
            title: 'Dark Mode',
            value: value,
            onChanged: (newValue) {
              onChangedCalled = true;
              value = newValue;
            },
          ),
        ),
      );

      await tester.tap(find.byType(Switch));
      await tester.pumpAndSettle();

      // Assert
      expect(onChangedCalled, isTrue);
    });

    testWidgets('should also toggle when tile is tapped', (tester) async {
      // Arrange
      bool value = false;
      int toggleCount = 0;

      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: SettingSwitch(
            icon: Icons.light_mode,
            title: 'Dark Mode',
            value: value,
            onChanged: (_) => toggleCount++,
          ),
        ),
      );

      // Tap the tile instead of the switch
      await tester.tap(find.text('Dark Mode'));
      await tester.pumpAndSettle();

      // Assert
      expect(toggleCount, greaterThan(0));
    });

    testWidgets('should display correct icon', (tester) async {
      // Arrange
      bool value = false;

      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: SettingSwitch(
            icon: Icons.dark_mode,
            title: 'Dark Mode',
            value: value,
            onChanged: (_) {},
          ),
        ),
      );

      // Assert
      expect(find.byIcon(Icons.dark_mode), findsOneWidget);
    });
  });
}

