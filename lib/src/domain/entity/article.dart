enum ArticleType {
  article,
  bookChapter,
  dataset,
  dissertation,
  editorial,
  erratum,
  grant,
  letter,
  paratext,
  peerReview,
  preprint,
  report,
  retraction,
  review,
  other,
}

extension ArticleTypeExtension on ArticleType {
  String get displayName {
    switch (this) {
      case ArticleType.article:
        return 'Article';
      case ArticleType.bookChapter:
        return 'Book Chapter';
      case ArticleType.dataset:
        return 'Dataset';
      case ArticleType.dissertation:
        return 'Dissertation';
      case ArticleType.editorial:
        return 'Editorial';
      case ArticleType.erratum:
        return 'Erratum';
      case ArticleType.grant:
        return 'Grant';
      case ArticleType.letter:
        return 'Letter';
      case ArticleType.paratext:
        return 'Paratext';
      case ArticleType.peerReview:
        return 'Peer Review';
      case ArticleType.preprint:
        return 'Preprint';
      case ArticleType.report:
        return 'Report';
      case ArticleType.retraction:
        return 'Retraction';
      case ArticleType.review:
        return 'Review';
      case ArticleType.other:
        return 'Other';
    }
  }
}

class Article {
  final String id;
  final String title;
  final ArticleType type;
  final String pageUrl;
  final String pdfUrl;
  final int year;
  final List<String> authors;
  final List<String> institutions;
  final String language;
  final int cites;

  final int citedBy;
  final double fwci;
  final double citationPercentile;

  final List<String> topics;

  final int relatedTo;
  final double apcPaid;
  final List<String> subfield;
  final String field;
  final String domain;

  final bool openAccess;

  final bool favorite;

  Article({
    required this.id,
    required this.title,
    required this.type,
    required this.pageUrl,
    required this.pdfUrl,
    required this.year,
    required this.authors,
    required this.institutions,
    required this.language,
    required this.cites,
    required this.citedBy,
    required this.fwci,
    required this.citationPercentile,
    required this.topics,
    required this.relatedTo,
    required this.apcPaid,
    required this.subfield,
    required this.field,
    required this.domain,
    required this.openAccess,
    required this.favorite,
  });
}
