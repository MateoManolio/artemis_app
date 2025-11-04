import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:artemis_app/l10n/app_localizations.dart';
import 'package:artemis_app/src/config/theme/app_theme.dart';
import 'package:artemis_app/src/presentation/providers/articles_filters_provider.dart';
import 'custom_modal.dart';

class FilterModal extends ConsumerStatefulWidget {
  const FilterModal({super.key});

  static Future<void> show(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return const FilterModal();
      },
    );
  }

  @override
  ConsumerState<FilterModal> createState() => _FilterModalState();
}

class _FilterModalState extends ConsumerState<FilterModal> {
  // Year range constants
  static const double _minYear = 2000.0;
  static const double _maxYear = 2024.0;
  static const int _yearDivisions = 24;

  double _startYear = _minYear;
  double _endYear = _maxYear;
  List<String>? _selectedPublicationTypes = [];
  bool _openAccess = false;

  @override
  void initState() {
    super.initState();
    // Initialize with current filter provider values
    final filters = ref.read(articlesFiltersNotifierProvider);
    if (filters.fromYear != null) {
      _startYear = filters.fromYear!.toDouble();
    }
    if (filters.toYear != null) {
      _endYear = filters.toYear!.toDouble();
    }
    if (filters.types != null && filters.types!.isNotEmpty) {
      _selectedPublicationTypes = filters.types;
    }
    if (filters.isOa != null) {
      _openAccess = filters.isOa!;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    return CustomModal(
      title: l10n.filters,
      headerActions: _buildClearButton(context, theme, l10n),
      footer: _buildFooter(context, theme, l10n),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.xl),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Publication year filter
            _buildPublicationYearFilter(theme, l10n),

            const SizedBox(height: AppSpacing.xxl),

            // Publication type filter
            _buildPublicationTypeFilter(context, theme),

            const SizedBox(height: AppSpacing.xxl),

            // Access filter
            _buildAccessFilter(theme, l10n),
          ],
        ),
      ),
    );
  }

  Widget _buildClearButton(
    BuildContext context,
    ThemeData theme,
    AppLocalizations l10n,
  ) {
    return TextButton(
      onPressed: () {
        setState(() {
          _startYear = _minYear;
          _endYear = _maxYear;
          _selectedPublicationTypes = [];
          _openAccess = true;
        });
        ref.read(articlesFiltersNotifierProvider.notifier).reset();
      },
      child: Text(
        l10n.clear,
        style: theme.textTheme.labelLarge?.copyWith(
          color: theme.colorScheme.primary,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildFooter(
    BuildContext context,
    ThemeData theme,
    AppLocalizations l10n,
  ) {
    return Column(
      children: [
        _buildApplyButton(context, theme, l10n),
        const SizedBox(height: AppSpacing.xxl),
      ],
    );
  }

  Widget _buildPublicationYearFilter(ThemeData theme, AppLocalizations l10n) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              l10n.publicationYear,
              style: theme.textTheme.labelLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onSurface,
              ),
            ),
            Text(
              '${_startYear.toInt()} - ${_endYear.toInt()}',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.md),
        RangeSlider(
          values: RangeValues(_startYear, _endYear),
          min: _minYear,
          max: _maxYear,
          divisions: _yearDivisions,
          activeColor: theme.colorScheme.primary,
          inactiveColor: theme.colorScheme.surfaceContainerHighest,
          onChanged: (RangeValues values) {
            setState(() {
              _startYear = values.start;
              _endYear = values.end;
            });
          },
        ),
      ],
    );
  }

  Widget _buildPublicationTypeFilter(BuildContext context, ThemeData theme) {
    final l10n = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.publicationType,
          style: theme.textTheme.labelLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: AppSpacing.md),
        Row(
          spacing: AppSpacing.md,
          children: [
            _buildPublicationTypeButton('Articles', l10n.articles),
            _buildPublicationTypeButton('Journals', l10n.journals),
            _buildPublicationTypeButton('Conferences', l10n.conferences),
          ],
        ),
      ],
    );
  }

  Widget _buildPublicationTypeButton(String type, String label) {
    final isSelected = _selectedPublicationTypes?.contains(type) ?? false;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (isSelected) {
              _selectedPublicationTypes?.remove(type);
            } else {
              _selectedPublicationTypes?.add(type);
            }
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
          decoration: BoxDecoration(
            color: isSelected
                ? Theme.of(context).colorScheme.primary
                : Theme.of(
                    context,
                  ).colorScheme.surfaceContainerLowest.withValues(alpha: 0.7),
            borderRadius: BorderRadius.circular(AppBorderRadius.sm),
            boxShadow: [
              BoxShadow(
                color: Theme.of(
                  context,
                ).colorScheme.shadow.withValues(alpha: 0.1),
                blurRadius: 2,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: Center(
            child: Text(
              label,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: isSelected
                    ? Theme.of(context).colorScheme.onPrimary
                    : Theme.of(context).colorScheme.onSurface,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAccessFilter(ThemeData theme, AppLocalizations l10n) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.access,
          style: theme.textTheme.labelLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.onSurface,
          ),
        ),
        const SizedBox(height: AppSpacing.md),
        GestureDetector(
          onTap: () {
            setState(() {
              _openAccess = !_openAccess;
              ref
                  .read(articlesFiltersNotifierProvider.notifier)
                  .setOnlyOpenAccess(_openAccess);
            });
          },
          child: Container(
            padding: const EdgeInsets.all(AppSpacing.md),
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerLowest.withValues(
                alpha: 0.7,
              ),
              borderRadius: BorderRadius.circular(AppBorderRadius.md),
              boxShadow: [
                BoxShadow(
                  color: theme.colorScheme.shadow.withValues(alpha: 0.1),
                  blurRadius: 2,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  width: AppIconSize.lg,
                  height: AppIconSize.lg,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _openAccess
                        ? theme.colorScheme.primary
                        : Colors.transparent,
                  ),
                  child: Icon(
                    _openAccess ? Icons.check : null,
                    color: _openAccess ? theme.colorScheme.onPrimary : null,
                    size: AppIconSize.sm,
                  ),
                ),
                const SizedBox(width: AppSpacing.md),
                Text(
                  l10n.openAccess,
                  style: theme.textTheme.labelLarge?.copyWith(
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildApplyButton(
    BuildContext context,
    ThemeData theme,
    AppLocalizations l10n,
  ) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.md),
      child: SizedBox(
        width: double.infinity,
        height: AppButtonHeight.lg,
        child: ElevatedButton(
          onPressed: () {
            // Map UI state to provider filters
            final List<String> types = _selectedPublicationTypes ?? [];
            ref
                .read(articlesFiltersNotifierProvider.notifier)
                .updateTypes(types);
            if (_startYear != _minYear || _endYear != _maxYear) {
              ref
                  .read(articlesFiltersNotifierProvider.notifier)
                  .updateYearRange(
                    fromYear: _startYear.toInt(),
                    toYear: _endYear.toInt(),
                  );
            }

            Navigator.of(context).pop();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: theme.colorScheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppBorderRadius.md),
            ),
          ),
          child: Text(
            l10n.applyFilters,
            style: theme.textTheme.labelLarge?.copyWith(
              color: theme.colorScheme.onPrimary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
