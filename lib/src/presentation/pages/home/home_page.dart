import 'package:artemis_app/src/presentation/pages/home/widgets/favorites_list.dart';
import 'package:artemis_app/src/presentation/pages/home/widgets/look_article.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:artemis_app/src/presentation/pages/home/widgets/articles_read.dart';
import 'package:artemis_app/src/presentation/pages/home/widgets/custom_search_bar.dart';
import 'package:artemis_app/src/presentation/pages/home/widgets/new_ideas.dart';

class HomePage extends StatelessWidget {
  
  static const String routeName = '/home';
  static const double paddingHorizontal = 16;
  static const double spacing = 16;

  final String? name;

  const HomePage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: name != null ? Text('Hello, $name') : Text('Hello'),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => context.go('/settings'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: paddingHorizontal),
          child: Column(
            spacing: spacing,
            children: [
              ArticlesRead(articlesRead: 5, weekGoal: 10),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomSearchBar(),
                  SizedBox(width: spacing),
                  LookArticle(),
                ],
              ),
              NewIdeas(),
              FavoritesList(),
            ],
          ),
        ),
      ),
    );
  }
}