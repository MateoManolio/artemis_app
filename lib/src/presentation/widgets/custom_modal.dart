import 'package:flutter/material.dart';

class CustomModal extends StatelessWidget {
  final Widget child;
  final double heightRatio;
  final String? title;
  final Widget? headerActions;
  final Widget? footer;

  const CustomModal({
    super.key,
    required this.child,
    this.heightRatio = 0.75,
    this.title,
    this.headerActions,
    this.footer,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * heightRatio,
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: Column(
        children: [
          if (title != null || headerActions != null)
            _buildHeader(context, theme),
          
          Expanded(child: child),
          
          if (footer != null) footer!,
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context, ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 12.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.chevron_left, size: 28),
            onPressed: () => Navigator.of(context).pop(),
          ),
          if (title != null)
            Text(
              title!,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onSurface,
              ),
            )
          else
            const SizedBox.shrink(),
          if (headerActions != null)
            headerActions!
          else
            const SizedBox.shrink(),
        ],
      ),
    );
  }
}
