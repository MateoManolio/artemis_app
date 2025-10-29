import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:artemis_app/src/presentation/pages/details/widgets/article_title.dart';
import 'package:artemis_app/src/presentation/pages/details/widgets/article_tags.dart';
import 'package:artemis_app/src/presentation/pages/details/widgets/publication_info.dart';
import 'package:artemis_app/src/presentation/pages/details/widgets/open_access_button.dart';
import 'package:artemis_app/src/presentation/pages/details/widgets/metrics_section.dart';
import 'package:artemis_app/src/presentation/pages/details/widgets/section_title.dart';
import 'package:artemis_app/src/presentation/pages/details/widgets/abstract_section.dart';
import 'package:artemis_app/src/presentation/pages/details/widgets/bottom_actions.dart';

class DetailsPage extends StatelessWidget {
  static const String routeName = '/details';
  
  // Constants
  static const double _spacing = 16.0;
  static const double _spacingLarge = 24.0;
  
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () => context.pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 3,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top + 80,
          left: _spacing,
          right: _spacing,
          bottom: _spacing,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ArticleTitle(title: 'A Grand Gender Convergence: Its Last Chapter'),
            SizedBox(height: _spacingLarge),
            
            ArticleTags(tags: ['Article', '2014', 'Open Access']),
            SizedBox(height: _spacingLarge),
            
            PublicationInfo(
              publication: 'American Economic Review',
              author: 'Claudia Goldin',
            ),
            SizedBox(height: _spacingLarge),
            
            OpenAccessButton(
              onViewSource: () {
                // TODO: Implementar lógica
              },
            ),
            SizedBox(height: _spacingLarge),
            
            MetricsSection(
              metrics: {
                'Citations': '2,297',
                'FWCI': '183.1',
                'Percentile': 'Top 1%',
              },
            ),
            SizedBox(height: _spacingLarge),
            
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SectionTitle(title: 'Key topics'),
                SizedBox(height: _spacing),
                ArticleTags(tags: [
                  'Labor market dynamics & wage inequality',
                  'Gender. Labor, and Family',
                  'Work-Family Balance',
                ], borderRadius: 12.0),
              ],
            ),
            SizedBox(height: _spacingLarge),
            
            AbstractSection(
              abstract: 'The converging roles of men and women are among the grandest advances in society and the economy in the last century. These aspects of the grand gender convergence are figurative chapters in a history of our times. The economic approach to couple formation and labor specialization from the previous chapter notwithstanding, there was more to the story of women\'s advancement',
            ),
            SizedBox(height: _spacingLarge),
            
            BottomActions(),
          ],
        ),
      ),
    );
  }
}