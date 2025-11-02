import 'package:artemis_app/src/data/models/dtos/work_dto.dart';
import 'package:artemis_app/src/data/models/dtos/location_dto.dart';
import 'package:artemis_app/src/domain/entity/article.dart';

extension WorkMapper on WorkDto {
  /// Maps the OpenAlex work type string to the ArticleType enum
  ArticleType _mapArticleType(String? typeString) {
    if (typeString == null || typeString.isEmpty) {
      return ArticleType.other;
    }

    // Normalize the string to lowercase and remove hyphens
    final normalized = typeString.toLowerCase().replaceAll('-', '');

    switch (normalized) {
      case 'article':
      case 'journalarticle':
        return ArticleType.article;
      case 'bookchapter':
        return ArticleType.bookChapter;
      case 'dataset':
        return ArticleType.dataset;
      case 'dissertation':
      case 'thesis':
        return ArticleType.dissertation;
      case 'editorial':
        return ArticleType.editorial;
      case 'erratum':
        return ArticleType.erratum;
      case 'grant':
        return ArticleType.grant;
      case 'letter':
        return ArticleType.letter;
      case 'paratext':
        return ArticleType.paratext;
      case 'peerreview':
        return ArticleType.peerReview;
      case 'preprint':
        return ArticleType.preprint;
      case 'report':
        return ArticleType.report;
      case 'retraction':
        return ArticleType.retraction;
      case 'review':
      case 'bookreview':
        return ArticleType.review;
      default:
        return ArticleType.other;
    }
  }

  Article toDomain({bool isFavorite = false}) {
    // Extract authors robustly
    final authorsList =
        authorships
            ?.map((authorship) => authorship.author?.displayName ?? '')
            .where((name) => name.isNotEmpty)
            .toList() ??
        [];

    // Extract unique institutions from all author affiliations
    final institutionsList = <String>{};
    authorships?.forEach((authorship) {
      authorship.institutions?.forEach((institution) {
        final name = institution.displayName;
        if (name != null && name.isNotEmpty) {
          institutionsList.add(name);
        }
      });
    });

    // Extract topics from the complete list
    final topicsList =
        topics
            ?.map((topic) => topic.displayName ?? '')
            .where((name) => name.isNotEmpty)
            .toList() ??
        [];

    // Determine URLs with priority: DOI > Landing Page > ID
    final pageUrl =
        doi?.toString() ??
        primaryLocation?.landingPageUrl?.toString() ??
        bestOaLocation?.landingPageUrl?.toString() ??
        id ??
        '';

    // PDF URL with multiple fallbacks
    final pdfUrl =
        bestOaLocation?.pdfUrl?.toString() ??
        openAccess?.oaUrl?.toString() ??
        primaryLocation?.pdfUrl?.toString() ??
        locations
            ?.firstWhere(
              (loc) => loc.pdfUrl != null,
              orElse: () => const LocationDto(),
            )
            .pdfUrl
            ?.toString() ??
        '';

    // Extract topic hierarchy: primaryTopic has priority
    final mainTopic =
        primaryTopic ?? (topics?.isNotEmpty == true ? topics!.first : null);

    final subfield = mainTopic?.subfield?.displayName ?? '';
    final field = mainTopic?.field?.displayName ?? '';
    final domain = mainTopic?.domain?.displayName ?? '';

    // Citation percentile with safe conversion
    final citationPercentile =
        citationNormalizedPercentile?.value?.toDouble() ?? 0.0;

    // Extract OpenAlex ID (last part of the URL)
    // Ejemplo: "https://openalex.org/W4414161455" -> "W4414161455"
    final articleId =
        id?.split('/').last ??
        (displayName ?? title ?? 'Untitled').hashCode.toString();

    return Article(
      id: articleId,
      title: displayName ?? title ?? 'Untitled',
      type: _mapArticleType(type),
      pageUrl: pageUrl,
      pdfUrl: pdfUrl,
      year: publicationYear ?? 0,
      authors: authorsList,
      institutions: institutionsList.toList(),
      language: language ?? 'en',
      cites: referencedWorksCount ?? 0,
      citedBy: citedByCount ?? 0,
      fwci: fwci ?? 0.0,
      citationPercentile: citationPercentile,
      topics: topicsList,
      relatedTo: relatedWorks?.length ?? 0,
      apcPaid: apcPaid?.valueUsd ?? 0.0,
      subfield: subfield.isNotEmpty ? [subfield] : [],
      field: field,
      domain: domain,
      openAccess: openAccess?.isOa ?? false,
      favorite: isFavorite,
    );
  }

  /// Reconstruct the abstract from the OpenAlex inverted index
  /// Useful to display in the detail view
  String? reconstructAbstract() {
    final invertedIndex = abstractInvertedIndex;
    if (invertedIndex == null || invertedIndex.isEmpty) {
      return null;
    }

    try {
      // Create a map of position -> word
      final Map<int, String> positionToWord = {};

      invertedIndex.forEach((word, positions) {
        for (final position in positions) {
          positionToWord[position] = word;
        }
      });

      // Sort by position and join
      final sortedPositions = positionToWord.keys.toList()..sort();
      final words = sortedPositions.map((pos) => positionToWord[pos]!);

      return words.join(' ');
    } catch (e) {
      // If the reconstruction fails, return null
      return null;
    }
  }

  /// Additional information useful for the detail view
  Map<String, dynamic> getExtraInfo() {
    return {
      'isRetracted': isRetracted ?? false,
      'isParatext': isParatext ?? false,
      'hasFulltext': hasFulltext ?? false,
      'fulltextOrigin': fulltextOrigin,
      'countriesCount': countriesDistinctCount ?? 0,
      'institutionsCount': institutionsDistinctCount ?? 0,
      'locationsCount': locationsCount ?? 0,
      'publicationDate': publicationDate,
      'createdDate': createdDate,
      'updatedDate': updatedDate,
      'biblio': {
        'volume': biblio?.volume,
        'issue': biblio?.issue,
        'firstPage': biblio?.firstPage,
        'lastPage': biblio?.lastPage,
      },
      'source': {
        'name': primaryLocation?.source?.displayName,
        'type': primaryLocation?.source?.type,
        'isOa': primaryLocation?.source?.isOa,
        'isInDoaj': primaryLocation?.source?.isInDoaj,
      },
      'keywords': keywords?.map((k) => k.displayName).toList() ?? [],
      'concepts': concepts?.map((c) => c.displayName).toList() ?? [],
      'citationsByYear':
          countsByYear
              ?.map((cby) => {'year': cby.year, 'count': cby.citedByCount})
              .toList() ??
          [],
      'percentileRange': {
        'min': citedByPercentileYear?.min,
        'max': citedByPercentileYear?.max,
      },
      'topPercentiles': {
        'top1': citationNormalizedPercentile?.isInTop1Percent ?? false,
        'top10': citationNormalizedPercentile?.isInTop10Percent ?? false,
      },
    };
  }
}
