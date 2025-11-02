import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_theme.g.dart';

// Spacing constants
class AppSpacing {
  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 12.0;
  static const double lg = 16.0;
  static const double xl = 24.0;
  static const double xxl = 32.0;
  static const double xxxl = 48.0;
  static const double xxxxl = 80.0;
}

// Border radius constants
class AppBorderRadius {
  static const double sm = 8.0;
  static const double md = 12.0;
  static const double lg = 16.0;
  static const double xl = 24.0;
  static const double circular = 999.0;
}

// Icon size constants
class AppIconSize {
  static const double sm = 16.0;
  static const double md = 18.0;
  static const double lg = 24.0;
  static const double xl = 32.0;
  static const double xxl = 48.0;
  static const double xxxl = 64.0;
  static const double xxxxl = 80.0;
}

// Button height constants
class AppButtonHeight {
  static const double sm = 40.0;
  static const double md = 48.0;
  static const double lg = 56.0;
}

// Color Schemes
const _lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFFF6A24D),
  onPrimary: Color(0xFF1B1F23),
  primaryContainer: Color(0xFFFFE1C2),
  onPrimaryContainer: Color(0xFF3A2000),
  secondary: Color(0xFFE86A7A),
  onSecondary: Color(0xFF1B1F23),
  secondaryContainer: Color(0xFFFFD6DD),
  onSecondaryContainer: Color(0xFF3E0B16),
  tertiary: Color(0xFF2DB2A9),
  onTertiary: Color(0xFF0D1B1A),
  tertiaryContainer: Color(0xFFBDECE8),
  onTertiaryContainer: Color(0xFF06201D),
  error: Color(0xFFBA1A1A),
  onError: Color(0xFFFFFFFF),
  errorContainer: Color(0xFFFFDAD6),
  onErrorContainer: Color(0xFF410002),
  surface: Color(0xFFFFF4E8),
  onSurface: Color(0xFF1E2A36),
  surfaceDim: Color(0xFFF2E7DA),
  surfaceBright: Color(0xFFFFF8EF),
  surfaceContainerLowest: Color(0xFFFFFFFF),
  surfaceContainerLow: Color(0xFFFAEFE4),
  surfaceContainer: Color(0xFFF6E8DB),
  surfaceContainerHigh: Color(0xFFF1E3D6),
  surfaceContainerHighest: Color(0xFFEBDBC9),
  onSurfaceVariant: Color(0xFF545B65),
  outline: Color(0xFFCBBEAF),
  outlineVariant: Color(0xFFE3D6C8),
  shadow: Color(0xFF000000),
  scrim: Color(0xFF000000),
  inverseSurface: Color(0xFF2A313A),
  onInverseSurface: Color(0xFFEFF1F4),
  inversePrimary: Color(0xFFFFB86E),
  surfaceTint: Color(0xFFF6A24D),
);

const _darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFFFB86E),
  onPrimary: Color(0xFF2A1900),
  primaryContainer: Color(0xFF5C3900),
  onPrimaryContainer: Color(0xFFFFDDB0),
  secondary: Color(0xFFFF8EA0),
  onSecondary: Color(0xFF3E0B16),
  secondaryContainer: Color(0xFF5B1223),
  onSecondaryContainer: Color(0xFFFFD6DD),
  tertiary: Color(0xFF75D7CF),
  onTertiary: Color(0xFF06201D),
  tertiaryContainer: Color(0xFF0E3A36),
  onTertiaryContainer: Color(0xFFBDECE8),
  error: Color(0xFFFFB4AB),
  onError: Color(0xFF690005),
  errorContainer: Color(0xFF93000A),
  onErrorContainer: Color(0xFFFFDAD6),
  surface: Color(0xFF12171E),
  onSurface: Color(0xFFE6E8EB),
  surfaceDim: Color(0xFF0E1319),
  surfaceBright: Color(0xFF1C222A),
  surfaceContainerLowest: Color(0xFF0B0F14),
  surfaceContainerLow: Color(0xFF151A21),
  surfaceContainer: Color(0xFF181E25),
  surfaceContainerHigh: Color(0xFF1B2129),
  surfaceContainerHighest: Color(0xFF1E252D),
  onSurfaceVariant: Color(0xFFA5ACB6),
  outline: Color(0xFF5C636D),
  outlineVariant: Color(0xFF343B45),
  shadow: Color(0xFF000000),
  scrim: Color(0xFF000000),
  inverseSurface: Color(0xFFF3EEE8),
  onInverseSurface: Color(0xFF1B1F23),
  inversePrimary: Color(0xFFF6A24D),
  surfaceTint: Color(0xFFFFB86E),
);

@riverpod
ThemeData lightThemeProvider(Ref ref) {
  final colorScheme = _lightColorScheme;

  return ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    appBarTheme: const AppBarTheme(centerTitle: true, elevation: 0),
    cardTheme: CardThemeData(
      elevation: 2,
      color: colorScheme.surfaceContainerLowest,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppBorderRadius.md),
      ),
    ),
    searchBarTheme: SearchBarThemeData(
      backgroundColor: WidgetStateProperty.all(
        colorScheme.surfaceContainerLowest,
      ),
      elevation: WidgetStateProperty.all(2),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppBorderRadius.md),
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppBorderRadius.sm),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.xl,
          vertical: AppSpacing.md,
        ),
      ),
    ),
    textTheme: _buildTextTheme(colorScheme),
  );
}

@riverpod
ThemeData darkThemeProvider(Ref ref) {
  final colorScheme = _darkColorScheme;

  return ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    appBarTheme: const AppBarTheme(centerTitle: true, elevation: 0),
    cardTheme: CardThemeData(
      elevation: 2,
      color: colorScheme.surfaceContainerLowest,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppBorderRadius.md),
      ),
    ),
    searchBarTheme: SearchBarThemeData(
      backgroundColor: WidgetStateProperty.all(
        colorScheme.surfaceContainerLowest,
      ),
      elevation: WidgetStateProperty.all(0),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppBorderRadius.md),
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppBorderRadius.sm),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.xl,
          vertical: AppSpacing.md,
        ),
      ),
    ),
    textTheme: _buildTextTheme(colorScheme),
  );
}

// Text Theme builder
TextTheme _buildTextTheme(ColorScheme colorScheme) {
  return TextTheme(
    displayLarge: TextStyle(
      fontSize: 57,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.25,
      height: 1.12,
      color: colorScheme.onSurface,
    ),
    displayMedium: TextStyle(
      fontSize: 45,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.16,
      color: colorScheme.onSurface,
    ),
    displaySmall: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.22,
      color: colorScheme.onSurface,
    ),
    headlineLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.25,
      color: colorScheme.onSurface,
    ),
    headlineMedium: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.29,
      color: colorScheme.onSurface,
    ),
    headlineSmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.33,
      color: colorScheme.onSurface,
    ),
    titleLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
      height: 1.27,
      color: colorScheme.onSurface,
    ),
    titleMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
      height: 1.33,
      color: colorScheme.onSurface,
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      height: 1.43,
      color: colorScheme.onSurface,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      height: 1.43,
      color: colorScheme.onSurface,
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      height: 1.33,
      color: colorScheme.onSurface,
    ),
    labelSmall: TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      height: 1.45,
      color: colorScheme.onSurface,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      height: 1.5,
      color: colorScheme.onSurface,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      height: 1.43,
      color: colorScheme.onSurface,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      height: 1.33,
      color: colorScheme.onSurface,
    ),
  );
}
