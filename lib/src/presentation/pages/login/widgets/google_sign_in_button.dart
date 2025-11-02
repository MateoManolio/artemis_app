import 'package:flutter/material.dart';
import 'package:artemis_app/src/config/theme/app_theme.dart';
import 'package:artemis_app/src/presentation/widgets/safe_svg_picture.dart';
import 'package:artemis_app/l10n/app_localizations.dart';

class GoogleSignInButton extends StatelessWidget {
  static const String googleIconPath = 'assets/svg/google_icon_logo.svg';
  final VoidCallback onPressed;
  static const double letterSpacing = 0.5;
  const GoogleSignInButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final l10n = AppLocalizations.of(context)!;

    return Container(
      width: double.infinity,
      height: AppButtonHeight.lg,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colorScheme.primary,
            colorScheme.primary.withValues(alpha: 0.9),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(AppBorderRadius.lg),
        boxShadow: [
          BoxShadow(
            color: colorScheme.primary.withValues(alpha: 0.3),
            blurRadius: AppSpacing.md,
            offset: Offset(0, AppSpacing.xs),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(AppBorderRadius.lg),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: AppIconSize.xl,
                  height: AppIconSize.xl,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppBorderRadius.lg),
                    color: colorScheme.surfaceContainerLowest,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(AppSpacing.xs),
                    child: SafeSvgPicture.asset(googleIconPath),
                  ),
                ),
                const SizedBox(width: AppSpacing.md),
                Text(
                  l10n.signInWithGoogle,
                  style: theme.textTheme.labelLarge?.copyWith(
                    color: colorScheme.onPrimary,
                    fontWeight: FontWeight.w600,
                    letterSpacing: letterSpacing,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
