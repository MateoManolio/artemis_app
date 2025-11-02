import 'package:artemis_app/src/presentation/pages/settings/widgets/setting_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../helpers/widget_test_helpers.dart';

void main() {
  group('SettingTile Widget Tests', () {
    testWidgets('should display title and icon', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: SettingTile(
            icon: Icons.settings,
            title: 'Test Setting',
            onTap: () {},
          ),
        ),
      );

      // Assert
      expect(find.text('Test Setting'), findsOneWidget);
      expect(find.byIcon(Icons.settings), findsOneWidget);
    });

    testWidgets('should display subtitle when provided', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: SettingTile(
            icon: Icons.settings,
            title: 'Test Setting',
            subtitle: 'Test Subtitle',
            onTap: () {},
          ),
        ),
      );

      // Assert
      expect(find.text('Test Subtitle'), findsOneWidget);
    });

    testWidgets('should call onTap when tapped', (tester) async {
      // Arrange
      bool tapped = false;

      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: SettingTile(
            icon: Icons.settings,
            title: 'Test Setting',
            onTap: () => tapped = true,
          ),
        ),
      );

      await tester.tap(find.byType(InkWell));
      await tester.pumpAndSettle();

      // Assert
      expect(tapped, isTrue);
    });

    testWidgets('should display trailing widget when provided', (tester) async {
      // Arrange
      const trailingWidget = Icon(Icons.chevron_right);

      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: SettingTile(
            icon: Icons.settings,
            title: 'Test Setting',
            trailing: trailingWidget,
            onTap: () {},
          ),
        ),
      );

      // Assert
      expect(find.byIcon(Icons.chevron_right), findsOneWidget);
    });

    testWidgets('should use Card styling', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: SettingTile(
            icon: Icons.settings,
            title: 'Test Setting',
            onTap: () {},
          ),
        ),
      );

      // Assert
      expect(find.byType(Card), findsOneWidget);
    });

    testWidgets('should have rounded corners', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: SettingTile(
            icon: Icons.settings,
            title: 'Test Setting',
            onTap: () {},
          ),
        ),
      );

      // Assert
      final inkWell = tester.widget<InkWell>(find.byType(InkWell));
      expect(inkWell.borderRadius, equals(BorderRadius.circular(12)));
    });

    testWidgets('should not call onTap when null', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: SettingTile(
            icon: Icons.settings,
            title: 'Test Setting',
            onTap: null,
          ),
        ),
      );

      await tester.tap(find.byType(InkWell));
      await tester.pumpAndSettle();

      // Assert - should not throw when onTap is null
      expect(find.text('Test Setting'), findsOneWidget);
    });
  });
}

