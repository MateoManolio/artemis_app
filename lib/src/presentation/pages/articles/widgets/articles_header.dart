import 'package:flutter/material.dart';
import 'package:artemis_app/l10n/app_localizations.dart';
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
            const SizedBox(width: 8),
            OutlinedButton(
              onPressed: onFiltersPressed,
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
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
