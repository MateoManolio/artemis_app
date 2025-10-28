import 'package:artemis_app/src/presentation/providers/weekly_goal_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'setting_option.dart';

class ReadingSection extends ConsumerWidget {
  const ReadingSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weeklyGoal = ref.watch(weeklyGoalProvider);
    return Column(
      children: [
        SettingOption(
          icon: Icons.timer_outlined,
          title: 'Weekly Goal',
          subtitle: 'Set your reading goal',
          value: '$weeklyGoal articles',
          onTap: () async {
          final result = await showDialog<int>(
            context: context,
            builder: (context) {
              final TextEditingController controller = TextEditingController();
              return Dialog(
                insetPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Set Weekly Goal',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        controller: controller,
                        autofocus: true,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Number of articles',
                          border: OutlineInputBorder(),
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
                            child: const Text('Cancel'),
                          ),
                          const SizedBox(width: 12),
                          ElevatedButton(
                            onPressed: () {
                              final value = int.tryParse(controller.text);
                              if (value != null && value > 0) {
                                ref.read(weeklyGoalProvider.notifier).setWeeklyGoal(value);
                                Navigator.of(context).pop();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Weekly goal set to $value articles')),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Please enter a valid positive number')),
                                );
                              }
                            },
                            child: const Text('Save'),
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
          title: 'Font Size',
          subtitle: 'Adjust reading comfort',
          value: 'Medium',
          onTap: () {
            // TODO: Implement font size selector
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Font size feature coming soon'),
              ),
            );
          },
        ),
        const SizedBox(height: 8),
        SettingOption(
          icon: Icons.auto_stories_outlined,
          title: 'Reading Mode',
          subtitle: 'Choose how to read articles',
          value: 'Distraction-free',
          onTap: () {
            // TODO: Implement reading mode selector
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Reading mode feature coming soon'),
              ),
            );
          },
        ),
      ],
    );
  }
}
