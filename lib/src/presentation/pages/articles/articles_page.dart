import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../widgets/filter_modal.dart';
import 'widgets/articles_header.dart';
import 'widgets/articles_list.dart';

class ArticlesPage extends StatefulWidget {
  static const String routeName = '/articles';
  
  const ArticlesPage({super.key});

  @override
  State<ArticlesPage> createState() => _ArticlesPageState();
}

class _ArticlesPageState extends State<ArticlesPage> {
  final TextEditingController _searchController = TextEditingController();

  void _onSearchChanged(String query) {
    // TODO: Implement search filtering
  }

  void _onFiltersPressed() {
    FilterModal.show(context);
  }

  void _onArticleTap(int index) {
    // Navigate to article details
    context.push('/details');
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Article Explorer',
          style: theme.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: colorScheme.onSurface,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: ArticlesHeader(
              searchController: _searchController,
              onSearchChanged: _onSearchChanged,
              onFiltersPressed: _onFiltersPressed,
            ),
          ),
          Expanded(
            child: ArticlesList(
              onArticleTap: _onArticleTap,
            ),
          ),
        ],
      ),
    );
  }
}