import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:artemis_app/src/config/theme/app_theme.dart';
import 'package:artemis_app/src/presentation/pages/articles/articles_page.dart';
import 'package:artemis_app/src/presentation/widgets/safe_svg_picture.dart';
import 'package:artemis_app/l10n/app_localizations.dart';

class NewIdeas extends StatelessWidget {
  const NewIdeas({super.key});

  static const String newIdeasIconPath = 'assets/svg/discover_new_ideas.svg';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final l10n = AppLocalizations.of(context)!;

    return SizedBox(
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppBorderRadius.lg),
        ),
        color: colorScheme.primary,
        child: InkWell(
          onTap: () => context.push(ArticlesPage.routeName),
          borderRadius: BorderRadius.circular(AppBorderRadius.lg),
          child: Padding(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: Row(
              children: [
                SafeSvgPicture.asset(
                  newIdeasIconPath,
                  width: AppIconSize.xxxxl,
                  height: AppIconSize.xxxxl,
                ),
                const SizedBox(width: AppSpacing.lg),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        l10n.discoverNewIdeas,
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: colorScheme.onPrimary,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.xs),
                      Text(
                        l10n.exploreInterestingTopics,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: colorScheme.onPrimary.withValues(alpha: 0.9),
                        ),
                      ),
                    ],
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
