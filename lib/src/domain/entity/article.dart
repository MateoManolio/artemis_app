enum ArticleType{
  work,

}

class Article{
  final int id;
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
    required this.favorite
  });
}