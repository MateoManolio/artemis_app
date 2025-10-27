import 'package:flutter/material.dart';
import 'setting_option.dart';

class ReadingSection extends StatelessWidget {
  const ReadingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SettingOption(
          icon: Icons.timer_outlined,
          title: 'Weekly Goal',
          subtitle: 'Set your reading goal',
          value: '10 articles',
          onTap: () {
            // TODO: Implement weekly goal selector
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Weekly goal feature coming soon'),
              ),
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
