import 'package:flutter/material.dart';
import 'article_card.dart';

class ArticlesList extends StatelessWidget {
  const ArticlesList({super.key, required this.onArticleTap});

  final ValueChanged<int> onArticleTap;

  // Mock data - in a real app, this would come from a provider or state manager
  static const _articles = [
    {
      'title': 'Deep residual learning for image recognition',
      'authors': 'Kaiming He, Xiangyu Zhang, Shaoqing Ren, et al.',
      'type': 'Journal article',
      'year': 2016,
      'isOpenAccess': true,
    },
    {
      'title': 'The neural basis of dynamic visual object recognition',
      'authors': 'Mex A. Riesenhuber, Sara J. Cadieu',
      'type': 'Journal article',
      'year': 2007,
      'isOpenAccess': true,
    },
    {
      'title': 'Quantifying the uncertainty of deep neural networks',
      'authors': 'Yarin Gal, Zoubin Ghahramani',
      'type': 'Conference paper',
      'year': 2016,
      'isOpenAccess': true,
    },
    {
      'title': 'Human-level control through deep reinforcement learning',
      'authors': 'Volodymyr Mnih, Koray Kavukcuoglu, et al.',
      'type': 'Journal article',
      'year': 2015,
      'isOpenAccess': false,
    },
    {
      'title': 'Attention is all you need',
      'authors': 'Ashish Vaswani, Noam Shazeer, et al.',
      'type': 'Conference paper',
      'year': 2017,
      'isOpenAccess': true,
    },
    {
      'title': 'BERT: Pre-training of deep bidirectional transformers',
      'authors': 'Jacob Devlin, Ming-Wei Chang, et al.',
      'type': 'Conference paper',
      'year': 2019,
      'isOpenAccess': false,
    },
    {
      'title': 'EfficientNet: Rethinking model scaling for convolutional neural networks',
      'authors': 'Mingxing Tan, Quoc V. Le',
      'type': 'Conference paper',
      'year': 2019,
      'isOpenAccess': true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: _articles.length,
      itemBuilder: (context, index) {
        final article = _articles[index];
        return ArticleCard(
          title: article['title'] as String,
          authors: article['authors'] as String,
          type: article['type'] as String,
          year: article['year'] as int,
          isOpenAccess: article['isOpenAccess'] as bool,
          onTap: () => onArticleTap(index),
        );
      },
    );
  }
}
