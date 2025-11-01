import 'package:artemis_app/src/core/util/config_constants.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'locale_provider.g.dart';

@riverpod
class LocaleNotifier extends _$LocaleNotifier {
  @override
  Locale build() {
    return Locale(ConfigConstants.english);
  }

  Future<void> initializeLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final languageCode =
        prefs.getString(ConfigConstants.language) ?? ConfigConstants.english;
    state = Locale(languageCode);
  }

  void setLocale(Locale locale) {
    _saveLocale(locale);
    state = locale;
  }

  Future<void> _saveLocale(Locale locale) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(ConfigConstants.language, locale.languageCode);
  }
}
