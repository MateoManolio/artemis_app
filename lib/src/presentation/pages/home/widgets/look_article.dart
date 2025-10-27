import 'package:artemis_app/src/presentation/widgets/filter_modal.dart';
import 'package:flutter/material.dart';

class LookArticle extends StatelessWidget {
  const LookArticle({super.key});

  static const double padding = 4;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite),
          ),
        ),
        Card(
          child: IconButton(
            onPressed: () => FilterModal.show(context),
            icon: Icon(Icons.article),
          ),
        ),
      ],
    );
  }
}