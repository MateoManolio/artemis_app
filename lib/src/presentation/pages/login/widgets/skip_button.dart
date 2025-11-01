import 'package:flutter/material.dart';
import 'package:artemis_app/l10n/app_localizations.dart';

class SkipButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SkipButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      ),
      child: Text(
        l10n.skip,
        style: theme.textTheme.titleMedium?.copyWith(
          color: theme.colorScheme.onSurfaceVariant,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.2,
        ),
      ),
    );
  }
}
