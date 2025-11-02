import 'package:artemis_app/src/presentation/pages/settings/widgets/setting_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../helpers/widget_test_helpers.dart';

void main() {
  group('SettingOption Widget Tests', () {
    testWidgets('should display option with title and icon', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: SettingOption(
            icon: Icons.language,
            title: 'Language',
            onTap: () {},
          ),
        ),
      );

      // Assert
      expect(find.text('Language'), findsOneWidget);
      expect(find.byIcon(Icons.language), findsOneWidget);
    });

    testWidgets('should display value when provided', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: SettingOption(
            icon: Icons.language,
            title: 'Language',
            value: 'English',
            onTap: () {},
          ),
        ),
      );

      // Assert
      expect(find.text('English'), findsOneWidget);
    });

    testWidgets('should display subtitle when value is not provided', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: SettingOption(
            icon: Icons.language,
            title: 'Language',
            subtitle: 'Select language',
            onTap: () {},
          ),
        ),
      );

      // Assert
      expect(find.text('Select language'), findsOneWidget);
    });

    testWidgets('should prioritize value over subtitle', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: SettingOption(
            icon: Icons.language,
            title: 'Language',
            subtitle: 'Select language',
            value: 'Spanish',
            onTap: () {},
          ),
        ),
      );

      // Assert
      expect(find.text('Spanish'), findsOneWidget);
      expect(find.text('Select language'), findsNothing);
    });

    testWidgets('should display chevron right icon', (tester) async {
      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: SettingOption(
            icon: Icons.language,
            title: 'Language',
            onTap: () {},
          ),
        ),
      );

      // Assert
      expect(find.byIcon(Icons.chevron_right), findsOneWidget);
    });

    testWidgets('should call onTap when tapped', (tester) async {
      // Arrange
      bool tapped = false;

      // Act
      await pumpApp(
        tester,
        Scaffold(
          body: SettingOption(
            icon: Icons.language,
            title: 'Language',
            onTap: () => tapped = true,
          ),
        ),
      );

      await tester.tap(find.text('Language'));
      await tester.pumpAndSettle();

      // Assert
      expect(tapped, isTrue);
    });
  });
}

