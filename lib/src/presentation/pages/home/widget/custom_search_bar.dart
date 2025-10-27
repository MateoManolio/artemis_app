import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  static const double borderRadius = 12;
  static const double contentPaddingVertical = 8;

  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenWidth = MediaQuery.of(context).size.width;
    final contentPaddingHorizontal = screenWidth / 2;
    
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search articles...',
          prefixIcon: Icon(Icons.search),
          filled: true,
          fillColor: theme.colorScheme.surfaceContainerHighest,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: contentPaddingHorizontal,
            vertical: contentPaddingVertical,
          ),
        ),
      ),
    );
  }
}