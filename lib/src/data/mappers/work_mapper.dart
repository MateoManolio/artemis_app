import 'package:artemis_app/src/data/models/dtos/work_dto.dart';
import 'package:artemis_app/src/domain/entity/article.dart';

extension WorkMapper on WorkDto {
  Article toDomain({bool isFavorite = false}) {
    // Extraer autores
    final authorsList = authorships
            ?.map((authorship) => authorship.author?.displayName ?? '')
            .where((name) => name.isNotEmpty)
            .toList() ??
        [];

    // Extraer instituciones de las afiliaciones de los autores
    final institutionsList = <String>{};
    authorships?.forEach((authorship) {
      authorship.institutions?.forEach((institution) {
        final name = institution.displayName;
        if (name != null && name.isNotEmpty) {
          institutionsList.add(name);
        }
      });
    });

    // Extraer topics
    final topicsList =
        topics?.map((topic) => topic.displayName ?? '').where((name) => name.isNotEmpty).toList() ??
            [];

    // Determinar URLs
    final pageUrl = doi?.toString() ??
        primaryLocation?.landingPageUrl?.toString() ??
        id ??
        '';
    
    final pdfUrl = bestOaLocation?.pdfUrl?.toString() ??
        openAccess?.oaUrl?.toString() ??
        primaryLocation?.pdfUrl?.toString() ??
        '';

    // Extraer campos jerárquicos del topic principal
    final mainTopic = primaryTopic ?? (topics?.isNotEmpty == true ? topics!.first : null);
    final subfield = mainTopic?.subfield?.displayName ?? '';
    final field = mainTopic?.field?.displayName ?? '';
    final domain = mainTopic?.domain?.displayName ?? '';

    // Calcular citationPercentile
    final citationPercentile = citationNormalizedPercentile?.value?.toDouble() ?? 0.0;

    return Article(
      id: id.hashCode,
      title: displayName ?? title ?? 'Untitled',
      type: ArticleType.work,
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
}

