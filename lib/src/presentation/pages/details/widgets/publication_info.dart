import 'package:flutter/material.dart';

class PublicationInfo extends StatelessWidget {
  final String publication;
  final String author;
  
  static const double _spacing = 16.0;
  static const double _avatarRadius = 20.0;

  const PublicationInfo({
    super.key,
    required this.publication,
    required this.author,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: _avatarRadius,
          backgroundColor: Colors.grey[300],
          child: Icon(Icons.person, size: 24),
        ),
        SizedBox(width: _spacing),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                publication,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                author,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

