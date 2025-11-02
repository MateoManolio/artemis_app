import 'package:flutter/material.dart';
import 'package:artemis_app/l10n/app_localizations.dart';
import 'package:artemis_app/src/config/theme/app_theme.dart';

class OpenAccessButton extends StatelessWidget {
  final VoidCallback? onViewPdf;
  final VoidCallback? onViewSource;
  final bool hasPdf;

  static const double isPdfEnabledOpacity = 1.0;
  static const double isSourceEnabledOpacity = 1.0;
  static const double disabledOpacity = 0.5;
  const OpenAccessButton({
    super.key,
    this.onViewPdf,
    this.onViewSource,
    this.hasPdf = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final isSourceEnabled = onViewSource != null;
    final isPdfEnabled = onViewPdf != null;
    final l10n = AppLocalizations.of(context)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // PDF button - always visible
        if (hasPdf)
          Opacity(
            opacity: isPdfEnabled ? isPdfEnabledOpacity : disabledOpacity,
            child: GestureDetector(
              onTap: isPdfEnabled ? onViewPdf : null,
              child: Container(
                height: AppButtonHeight.md,
                decoration: BoxDecoration(
                  color: colorScheme.tertiary,
                  borderRadius: BorderRadius.circular(AppBorderRadius.sm),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.book_online,
                      size: AppIconSize.md,
                      color: colorScheme.onTertiary,
                    ),
                    const SizedBox(width: AppSpacing.md),
                    Text(
                      l10n.openAccessPdf,
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: colorScheme.onTertiary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        const SizedBox(height: AppSpacing.md),

        // View Source button - always visible, larger
        Opacity(
          opacity: isSourceEnabled ? isSourceEnabledOpacity : disabledOpacity,
          child: GestureDetector(
            onTap: isSourceEnabled ? onViewSource : null,
            child: Container(
              height: AppButtonHeight.md,
              decoration: BoxDecoration(
                border: Border.all(
                  color: isSourceEnabled
                      ? colorScheme.outline
                      : colorScheme.outlineVariant,
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(AppBorderRadius.sm),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.open_in_new,
                    size: AppIconSize.md,
                    color: isSourceEnabled
                        ? colorScheme.onSurface
                        : colorScheme.onSurfaceVariant,
                  ),
                  const SizedBox(width: AppSpacing.md),
                  Text(
                    l10n.viewSource,
                    style: theme.textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: isSourceEnabled
                          ? colorScheme.onSurface
                          : colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
