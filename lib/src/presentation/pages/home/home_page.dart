import 'package:artemis_app/src/presentation/providers/articles_read_provider.dart';
import 'package:artemis_app/src/presentation/pages/home/providers/get_favorites_provider.dart';
import 'package:artemis_app/src/presentation/pages/home/widgets/favorites_list.dart';
import 'package:artemis_app/src/presentation/pages/home/widgets/look_article.dart';
import 'package:artemis_app/src/presentation/providers/weekly_goal_provider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:artemis_app/src/presentation/pages/home/widgets/articles_read.dart';
import 'package:artemis_app/src/presentation/pages/home/widgets/custom_search_bar.dart';
import 'package:artemis_app/src/presentation/pages/home/widgets/new_ideas.dart';

class HomePage extends ConsumerWidget {
  static const String routeName = '/home';
  static const double paddingHorizontal = 16;
  static const double spacing = 16;
  final String? name;

  const HomePage({super.key, required this.name});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favorites = ref.watch(getFavoritesProvider);
    final weeklyGoal = ref.watch(weeklyGoalProvider);
    return Scaffold(
      appBar: AppBar(
        title: name != null ? Text('Hello, $name') : Text('Hello'),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => context.push('/settings'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: paddingHorizontal),
          child: Column(
            spacing: spacing,
            children: [
              ArticlesRead(
                articlesRead: ref.watch(articlesReadProviderProvider),
                weekGoal: weeklyGoal,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomSearchBar(
                    favorites: favorites.when(
                      data: (data) => data,
                      error: (error, stackTrace) => [],
                      loading: () => [],
                    ),
                  ),
                  SizedBox(width: spacing),
                  LookArticle(),
                ],
              ),
              NewIdeas(),
              favorites.when(
                data: (data) => FavoritesList(articles: data),
                error: (error, stackTrace) => Text('Error: $error'),
                loading: () => const Center(child: CircularProgressIndicator()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
