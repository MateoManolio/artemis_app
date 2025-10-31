import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_theme.g.dart';

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
  return ThemeData(
    useMaterial3: true,
    colorScheme: _lightColorScheme,
    appBarTheme: const AppBarTheme(centerTitle: true, elevation: 0),
    cardTheme: CardThemeData(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
    ),
  );
}

@riverpod
ThemeData darkThemeProvider(Ref ref) {
  return ThemeData(
    useMaterial3: true,
    colorScheme: _darkColorScheme,
    appBarTheme: const AppBarTheme(centerTitle: true, elevation: 0),
    cardTheme: CardThemeData(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
    ),
  );
}
