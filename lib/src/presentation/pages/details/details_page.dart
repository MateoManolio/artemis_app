import 'package:artemis_app/src/presentation/pages/details/providers/toogle_favorite_provider.dart';
import 'package:artemis_app/src/presentation/providers/articles_read_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:artemis_app/l10n/app_localizations.dart';
import 'package:artemis_app/src/domain/entity/article.dart';
import 'package:artemis_app/src/presentation/pages/details/widgets/article_title.dart';
import 'package:artemis_app/src/presentation/pages/details/widgets/article_tags.dart';
import 'package:artemis_app/src/presentation/pages/details/widgets/publication_info.dart';
import 'package:artemis_app/src/presentation/pages/details/widgets/open_access_button.dart';
import 'package:artemis_app/src/presentation/pages/details/widgets/metrics_section.dart';
import 'package:artemis_app/src/presentation/pages/details/widgets/section_title.dart';
import 'package:artemis_app/src/presentation/pages/details/widgets/abstract_section.dart';
import 'package:artemis_app/src/presentation/pages/details/widgets/bottom_actions.dart';

class DetailsPage extends ConsumerStatefulWidget {
  static const String routeName = '/details';

  final Article? article;

  const DetailsPage({super.key, this.article});

  @override
  ConsumerState<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends ConsumerState<DetailsPage> {
  // Constants
  static const double _spacing = 16.0;
  static const double _spacingLarge = 24.0;
  bool _isFavorite = false;

  /// Abre una URL en el navegador externo
  Future<void> _launchUrl(String url) async {
    ref.read(articlesReadProviderProvider.notifier).incrementArticlesRead();
    if (url.isEmpty) return;

    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  void initState() {
    super.initState();
    _isFavorite = widget.article?.favorite ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    // Si no hay artículo, mostrar error
    if (widget.article == null) {
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.chevron_left),
            onPressed: () => context.pop(),
          ),
        ),
        body: Center(child: Text(l10n.articleNotFound)),
      );
    }

    // Preparar datos del artículo
    final tags = [
      widget.article!.type.displayName,
      widget.article!.year.toString(),
      widget.article!.language,
      if (widget.article!.openAccess) l10n.openAccess,
    ];

    final metrics = {
      l10n.citations: widget.article!.citedBy.toString(),
      l10n.fwci: widget.article!.fwci.toStringAsFixed(1),
      l10n.percentile: widget.article!.citationPercentile > 99
          ? l10n.topPercent('1')
          : widget.article!.citationPercentile > 90
          ? l10n.topPercent('10')
          : '${widget.article!.citationPercentile.toStringAsFixed(0)}%',
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
            icon: Icon(_isFavorite ? Icons.favorite : Icons.favorite_border),
            onPressed: () {
              setState(() {
                _isFavorite = !_isFavorite;
                widget.article!.favorite = _isFavorite;
                ref.read(toggleFavoriteProvider(widget.article!));
              });
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
            ArticleTitle(title: widget.article!.title),
            const SizedBox(height: _spacingLarge),

            ArticleTags(tags: tags),
            const SizedBox(height: _spacingLarge),

            PublicationInfo(
              publication: widget.article!.institutions.isNotEmpty
                  ? widget.article!.institutions.first
                  : 'Unknown',
              author: widget.article!.authors.isNotEmpty
                  ? widget.article!.authors.first
                  : 'Unknown',
            ),
            const SizedBox(height: _spacingLarge),

            OpenAccessButton(
              hasPdf: true,
              onViewPdf: widget.article!.pdfUrl.isNotEmpty
                  ? () => _launchUrl(widget.article!.pdfUrl)
                  : null,
              onViewSource: widget.article!.pageUrl.isNotEmpty
                  ? () => _launchUrl(widget.article!.pageUrl)
                  : null,
            ),
            const SizedBox(height: _spacingLarge),

            MetricsSection(metrics: metrics),
            const SizedBox(height: _spacingLarge),

            if (widget.article!.topics.isNotEmpty)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SectionTitle(title: l10n.keyTopics),
                  const SizedBox(height: _spacing),
                  ArticleTags(tags: widget.article!.topics, borderRadius: 12.0),
                  const SizedBox(height: _spacingLarge),
                ],
              ),

            AbstractSection(
              abstract: l10n.abstractNotAvailable,
            ),
            const SizedBox(height: _spacingLarge),

            const BottomActions(),
          ],
        ),
      ),
    );
  }
}
