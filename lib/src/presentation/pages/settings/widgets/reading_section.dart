import 'package:artemis_app/src/presentation/pages/settings/widgets/font_size_dialog.dart';
import 'package:artemis_app/src/presentation/providers/weekly_goal_provider.dart';
import 'package:artemis_app/src/config/theme/app_theme.dart';
import 'package:artemis_app/src/config/theme/font_size_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:artemis_app/l10n/app_localizations.dart';
import 'setting_option.dart';

class ReadingSection extends ConsumerWidget {
  const ReadingSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weeklyGoal = ref.watch(weeklyGoalProvider);
    final l10n = AppLocalizations.of(context)!;

    return Column(
      children: [
        SettingOption(
          icon: Icons.timer_outlined,
          title: l10n.weeklyGoal,
          subtitle: l10n.setReadingGoal,
          value: l10n.articlesCount(weeklyGoal),
          onTap: () async {
            await showDialog<int>(
              context: context,
              builder: (context) {
                final theme = Theme.of(context);
                final TextEditingController controller =
                    TextEditingController();
                return Dialog(
                  insetPadding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.xl,
                    vertical: AppSpacing.xl,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppBorderRadius.lg),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(AppSpacing.xl),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          l10n.setWeeklyGoal,
                          style: theme.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: AppSpacing.lg),
                        TextField(
                          controller: controller,
                          autofocus: true,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: l10n.numberOfArticles,
                            border: const OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: AppSpacing.xl),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(l10n.cancel),
                            ),
                            const SizedBox(width: AppSpacing.md),
                            ElevatedButton(
                              onPressed: () {
                                final value = int.tryParse(controller.text);
                                if (value != null && value > 0) {
                                  ref
                                      .read(weeklyGoalProvider.notifier)
                                      .setWeeklyGoal(value);
                                  Navigator.of(context).pop();
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(l10n.weeklyGoalSet(value)),
                                    ),
                                  );
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        l10n.pleaseEnterValidNumber,
                                      ),
                                    ),
                                  );
                                }
                              },
                              child: Text(l10n.save),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
        const SizedBox(height: AppSpacing.sm),
        SettingOption(
          icon: Icons.text_fields_outlined,
          title: l10n.fontSize,
          subtitle: l10n.adjustReadingComfort,
          value: ref.watch(fontSizeProvider).label,
          onTap: () async {
            await showDialog(
              context: context,
              builder: (context) => const FontSizeDialog(),
            );
          },
        ),
        const SizedBox(height: AppSpacing.sm),
        SettingOption(
          icon: Icons.auto_stories_outlined,
          title: l10n.readingMode,
          subtitle: l10n.chooseHowToRead,
          value: l10n.distractionFree,
          onTap: () {
            // TODO: Implement reading mode selector
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(l10n.readingModeComingSoon)));
          },
        ),
      ],
    );
  }
}
