import 'package:artemis_app/src/core/util/config_constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'font_size_provider.g.dart';

enum FontSize {
  small(0.85, 'Small'),
  medium(1.0, 'Medium'),
  large(1.15, 'Large'),
  extraLarge(1.3, 'Extra Large');

  final double scale;
  final String label;

  const FontSize(this.scale, this.label);

  static FontSize fromScale(double scale) {
    if (scale <= 0.85) return FontSize.small;
    if (scale <= 1.0) return FontSize.medium;
    if (scale <= 1.15) return FontSize.large;
    return FontSize.extraLarge;
  }
}

@Riverpod(keepAlive: true)
class FontSizeNotifier extends _$FontSizeNotifier {
  @override
  FontSize build() {
    _loadFontSize();
    return FontSize.medium; // Default
  }

  Future<void> _loadFontSize() async {
    final prefs = await SharedPreferences.getInstance();
    final scale = prefs.getDouble(ConfigConstants.fontSize) ?? 1.0;
    state = FontSize.fromScale(scale);
  }

  Future<void> setFontSize(FontSize fontSize) async {
    state = fontSize;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble(ConfigConstants.fontSize, fontSize.scale);
  }

  double get textScaleFactor => state.scale;
}
