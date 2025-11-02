import 'package:artemis_app/l10n/app_localizations.dart';
import 'package:artemis_app/src/config/localization/locale_provider.dart';
import 'package:artemis_app/src/core/util/config_constants.dart';
import 'package:artemis_app/src/presentation/pages/settings/widgets/setting_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingDropdownButton extends ConsumerWidget {
  const SettingDropdownButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    return SettingTile(
      icon: Icons.language_outlined,
      title: l10n.language,
      subtitle: l10n.changeLanguage,
      trailing: DropdownButton<Locale>(
        value: Localizations.localeOf(context),
        onChanged: (Locale? newLocale) {
          if (newLocale != null) {
            ref.read(localeProvider.notifier).setLocale(newLocale);
          }
        },
        items: [
          DropdownMenuItem(
            value: Locale(ConfigConstants.english),
            child: Text(l10n.english),
          ),
          DropdownMenuItem(
            value: Locale(ConfigConstants.spanish),
            child: Text(l10n.spanish),
          ),
          DropdownMenuItem(
            value: Locale(ConfigConstants.portuguese),
            child: Text(l10n.portuguese),
          ),
        ],
      ),
    );
  }
}
