import 'package:flutter/material.dart';
import 'package:artemis_app/l10n/app_localizations.dart';
import 'package:artemis_app/src/config/theme/app_theme.dart';
import 'articles_search_bar.dart';

class ArticlesHeader extends StatelessWidget {
  const ArticlesHeader({
    super.key,
    this.onSearchChanged,
    this.searchController,
    this.onFiltersPressed,
  });

  final ValueChanged<String>? onSearchChanged;
  final TextEditingController? searchController;
  final VoidCallback? onFiltersPressed;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: ArticlesSearchBar(
                controller: searchController,
                onChanged: onSearchChanged,
              ),
            ),
            const SizedBox(width: AppSpacing.sm),
            OutlinedButton(
              onPressed: onFiltersPressed,
              style: OutlinedButton.styleFrom(
                backgroundColor: Theme.of(
                  context,
                ).colorScheme.surfaceContainerLowest,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppBorderRadius.md),
                ),
              ),
              child: Text(l10n.filters),
            ),
          ],
        ),
      ],
    );
  }
}
