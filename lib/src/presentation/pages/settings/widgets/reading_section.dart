import 'package:artemis_app/src/presentation/providers/weekly_goal_provider.dart';
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
                final TextEditingController controller =
                    TextEditingController();
                return Dialog(
                  insetPadding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 24,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          l10n.setWeeklyGoal,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextField(
                          controller: controller,
                          autofocus: true,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: l10n.numberOfArticles,
                            border: const OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(l10n.cancel),
                            ),
                            const SizedBox(width: 12),
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
                                      content: Text(
                                        l10n.weeklyGoalSet(value),
                                      ),
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
        const SizedBox(height: 8),
        SettingOption(
          icon: Icons.text_fields_outlined,
          title: l10n.fontSize,
          subtitle: l10n.adjustReadingComfort,
          value: l10n.medium,
          onTap: () {
            // TODO: Implement font size selector
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(l10n.fontSizeComingSoon)),
            );
          },
        ),
        const SizedBox(height: 8),
        SettingOption(
          icon: Icons.auto_stories_outlined,
          title: l10n.readingMode,
          subtitle: l10n.chooseHowToRead,
          value: l10n.distractionFree,
          onTap: () {
            // TODO: Implement reading mode selector
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(l10n.readingModeComingSoon)),
            );
          },
        ),
      ],
    );
  }
}
