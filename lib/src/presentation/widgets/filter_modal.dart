import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
  // Layout constants
  static const double _spacingSmall = 12.0;
  static const double _spacingMedium = 16.0;
  static const double _spacingLarge = 24.0;
  static const double _spacingXLarge = 32.0;

  // Border radius constants
  static const double _radiusSmall = 8.0;
  static const double _radiusMedium = 12.0;

  // Font size constants
  static const double _fontSizeSmall = 14.0;
  static const double _fontSizeMedium = 16.0;

  // Icon and component sizes
  static const double _iconSizeSmall = 16.0;
  static const double _iconSizeMedium = 24.0;
  static const double _buttonHeight = 56.0;

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
    // Inicializar con los valores actuales del provider de filtros
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

    return CustomModal(
      title: 'Filters',
      headerActions: _buildClearButton(context, theme),
      footer: _buildFooter(context, theme),
      child: SingleChildScrollView(
        padding: EdgeInsets.all(_spacingLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Publication year filter
            _buildPublicationYearFilter(theme),

            SizedBox(height: _spacingXLarge),

            // Publication type filter
            _buildPublicationTypeFilter(),

            SizedBox(height: _spacingXLarge),

            // Access filter
            _buildAccessFilter(theme),
          ],
        ),
      ),
    );
  }

  Widget _buildClearButton(BuildContext context, ThemeData theme) {
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
        'Clear',
        style: TextStyle(
          color: theme.colorScheme.primary,
          fontSize: _fontSizeMedium,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildFooter(BuildContext context, ThemeData theme) {
    return Column(
      children: [
        _buildApplyButton(context, theme),
        SizedBox(height: _spacingXLarge),
      ],
    );
  }

  Widget _buildPublicationYearFilter(ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Publication year',
              style: TextStyle(
                fontSize: _fontSizeMedium,
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onSurface,
              ),
            ),
            Text(
              '${_startYear.toInt()} - ${_endYear.toInt()}',
              style: TextStyle(
                fontSize: _fontSizeSmall,
                color: theme.colorScheme.onSurface,
              ),
            ),
          ],
        ),
        SizedBox(height: _spacingMedium),
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

  Widget _buildPublicationTypeFilter() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Publication type',
          style: TextStyle(
            fontSize: _fontSizeMedium,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: _spacingSmall),
        Row(
          spacing: _spacingSmall,
          children: [
            _buildPublicationTypeButton('Articles', 'Articles'),
            _buildPublicationTypeButton('Journals', 'Journals'),
            _buildPublicationTypeButton('Conferences', 'Conferences'),
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
          padding: EdgeInsets.symmetric(vertical: _spacingSmall),
          decoration: BoxDecoration(
            color: isSelected
                ? Theme.of(context).colorScheme.primary
                : Colors.white.withValues(alpha: 0.7),
            borderRadius: BorderRadius.circular(_radiusSmall),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 2,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                color: isSelected
                    ? Colors.white
                    : Theme.of(context).colorScheme.onSurface,
                fontSize: _fontSizeSmall,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAccessFilter(ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Access',
          style: TextStyle(
            fontSize: _fontSizeMedium,
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.onSurface,
          ),
        ),
        SizedBox(height: _spacingSmall),
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
            padding: EdgeInsets.all(_spacingMedium),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.7),
              borderRadius: BorderRadius.circular(_radiusMedium),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 2,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  width: _iconSizeMedium,
                  height: _iconSizeMedium,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _openAccess
                        ? theme.colorScheme.primary
                        : Colors.transparent,
                  ),
                  child: Icon(
                    _openAccess ? Icons.check : null,
                    color: _openAccess ? Colors.white : null,
                    size: _iconSizeSmall,
                  ),
                ),
                SizedBox(width: _spacingSmall),
                Text(
                  'Open Access',
                  style: TextStyle(
                    fontSize: _fontSizeMedium,
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

  Widget _buildApplyButton(BuildContext context, ThemeData theme) {
    return Padding(
      padding: EdgeInsets.all(_spacingMedium),
      child: SizedBox(
        width: double.infinity,
        height: _buttonHeight,
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
              borderRadius: BorderRadius.circular(_radiusMedium),
            ),
          ),
          child: Text(
            'Apply filters',
            style: TextStyle(
              color: Colors.white,
              fontSize: _fontSizeMedium,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
