import 'package:flutter/material.dart';

class OpenAccessButton extends StatelessWidget {
  final VoidCallback? onViewSource;
  
  static const double _buttonHeight = 48.0;
  static const double _spacing = 8.0;

  const OpenAccessButton({
    super.key,
    this.onViewSource,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: _buttonHeight,
          decoration: BoxDecoration(
            color: Colors.green[700],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Icon(Icons.book_online, size: 16, color: Colors.white,),
              SizedBox(width: _spacing),
              Text(
                'Open Access • PDF',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16),
        if (onViewSource != null)
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.open_in_new, size: 16),
              SizedBox(width: 4),
              GestureDetector(
                onTap: onViewSource,
                child: Text(
                  'View source',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[700],
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}

