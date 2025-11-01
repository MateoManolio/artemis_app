import 'package:flutter/material.dart';
import 'package:artemis_app/l10n/app_localizations.dart';

class OpenAccessButton extends StatelessWidget {
  final VoidCallback? onViewPdf;
  final VoidCallback? onViewSource;
  final bool hasPdf;

  static const double _buttonHeight = 48.0;
  static const double _spacing = 12.0;

  const OpenAccessButton({
    super.key,
    this.onViewPdf,
    this.onViewSource,
    this.hasPdf = true,
  });

  @override
  Widget build(BuildContext context) {
    final isSourceEnabled = onViewSource != null;
    final isPdfEnabled = onViewPdf != null;
    final l10n = AppLocalizations.of(context)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Botón PDF - siempre visible
        if (hasPdf)
          Opacity(
            opacity: isPdfEnabled ? 1.0 : 0.5,
            child: GestureDetector(
              onTap: isPdfEnabled ? onViewPdf : null,
              child: Container(
                height: _buttonHeight,
                decoration: BoxDecoration(
                  color: Colors.green[700],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.book_online, size: 18, color: Colors.white),
                    SizedBox(width: _spacing),
                    Text(
                      l10n.openAccessPdf,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        SizedBox(height: _spacing),

        // Botón View Source - siempre visible, más grande
        Opacity(
          opacity: isSourceEnabled ? 1.0 : 0.5,
          child: GestureDetector(
            onTap: isSourceEnabled ? onViewSource : null,
            child: Container(
              height: _buttonHeight,
              decoration: BoxDecoration(
                border: Border.all(
                  color: isSourceEnabled
                      ? Colors.grey[700]!
                      : Colors.grey[400]!,
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.open_in_new,
                    size: 18,
                    color: isSourceEnabled
                        ? Colors.grey[800]
                        : Colors.grey[500],
                  ),
                  SizedBox(width: _spacing),
                  Text(
                    l10n.viewSource,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: isSourceEnabled
                          ? Colors.grey[800]
                          : Colors.grey[500],
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
