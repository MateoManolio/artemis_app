import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:artemis_app/src/domain/entity/article.dart';
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

  final Article? article;

  const DetailsPage({super.key, this.article});

  /// Abre una URL en el navegador externo
  Future<void> _launchUrl(String url) async {
    if (url.isEmpty) return;

    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    // Si no hay artículo, mostrar error
    if (article == null) {
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.chevron_left),
            onPressed: () => context.pop(),
          ),
        ),
        body: const Center(child: Text('Article not found')),
      );
    }

    // Preparar datos del artículo
    final tags = [
      article!.type.displayName,
      article!.year.toString(),
      article!.language,
      if (article!.openAccess) 'Open Access',
    ];

    final metrics = {
      'Citations': article!.citedBy.toString(),
      'FWCI': article!.fwci.toStringAsFixed(1),
      'Percentile': article!.citationPercentile > 99
          ? 'Top 1%'
          : article!.citationPercentile > 90
          ? 'Top 10%'
          : '${article!.citationPercentile.toStringAsFixed(0)}%',
    };

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
            icon: Icon(
              article!.favorite ? Icons.favorite : Icons.favorite_border,
            ),
            onPressed: () {
              // TODO: Implementar lógica de favoritos
            },
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
            ArticleTitle(title: article!.title),
            const SizedBox(height: _spacingLarge),

            ArticleTags(tags: tags),
            const SizedBox(height: _spacingLarge),

            PublicationInfo(
              publication: article!.institutions.isNotEmpty
                  ? article!.institutions.first
                  : 'Unknown',
              author: article!.authors.isNotEmpty
                  ? article!.authors.first
                  : 'Unknown',
            ),
            const SizedBox(height: _spacingLarge),

            OpenAccessButton(
              hasPdf: true,
              onViewPdf: article!.pdfUrl.isNotEmpty
                  ? () => _launchUrl(article!.pdfUrl)
                  : null,
              onViewSource: article!.pageUrl.isNotEmpty
                  ? () => _launchUrl(article!.pageUrl)
                  : null,
            ),
            const SizedBox(height: _spacingLarge),

            MetricsSection(metrics: metrics),
            const SizedBox(height: _spacingLarge),

            if (article!.topics.isNotEmpty)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SectionTitle(title: 'Key topics'),
                  const SizedBox(height: _spacing),
                  ArticleTags(tags: article!.topics, borderRadius: 12.0),
                  const SizedBox(height: _spacingLarge),
                ],
              ),

            const AbstractSection(
              abstract: 'Abstract not available for this article yet.',
            ),
            const SizedBox(height: _spacingLarge),

            const BottomActions(),
          ],
        ),
      ),
    );
  }
}
