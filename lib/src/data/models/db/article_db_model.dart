import 'package:isar_community/isar.dart';
import 'package:artemis_app/src/domain/entity/article.dart';

part 'article_db_model.g.dart';

@Collection()
class ArticleDbModel {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late String articleId;

  late String title;

  late String type;

  late String pageUrl;

  late String pdfUrl;

  late int year;

  late List<String> authors;

  late List<String> institutions;

  late String language;

  late int cites;

  late int citedBy;

  late double fwci;

  late double citationPercentile;

  late List<String> topics;

  late int relatedTo;

  late double apcPaid;

  late List<String> subfield;

  late String field;

  late String domain;

  late bool openAccess;

  @Index()
  late bool favorite;

  late DateTime createdAt;

  DateTime? updatedAt;

  ArticleDbModel();

  factory ArticleDbModel.fromDomain(Article article) {
    return ArticleDbModel()
      ..articleId = article.id
      ..title = article.title
      ..type = article.type.name
      ..pageUrl = article.pageUrl
      ..pdfUrl = article.pdfUrl
      ..year = article.year
      ..authors = article.authors
      ..institutions = article.institutions
      ..language = article.language
      ..cites = article.cites
      ..citedBy = article.citedBy
      ..fwci = article.fwci
      ..citationPercentile = article.citationPercentile
      ..topics = article.topics
      ..relatedTo = article.relatedTo
      ..apcPaid = article.apcPaid
      ..subfield = article.subfield
      ..field = article.field
      ..domain = article.domain
      ..openAccess = article.openAccess
      ..favorite = article.favorite
      ..createdAt = DateTime.now();
  }

  /// Convierte el modelo de base de datos a la entidad de dominio
  Article toDomain() {
    return Article(
      id: articleId,
      title: title,
      type: _parseArticleType(type),
      pageUrl: pageUrl,
      pdfUrl: pdfUrl,
      year: year,
      authors: authors,
      institutions: institutions,
      language: language,
      cites: cites,
      citedBy: citedBy,
      fwci: fwci,
      citationPercentile: citationPercentile,
      topics: topics,
      relatedTo: relatedTo,
      apcPaid: apcPaid,
      subfield: subfield,
      field: field,
      domain: domain,
      openAccess: openAccess,
      favorite: favorite,
    );
  }

  /// Parsea el string del tipo de artículo al enum
  ArticleType _parseArticleType(String typeString) {
    try {
      return ArticleType.values.firstWhere(
        (e) => e.name == typeString,
        orElse: () => ArticleType.other,
      );
    } catch (e) {
      return ArticleType.other;
    }
  }

  /// Actualiza el timestamp de modificación
  ArticleDbModel updateTimestamp() {
    updatedAt = DateTime.now();
    return this;
  }

  /// Copia el modelo con campos modificados
  ArticleDbModel copyWith({
    String? articleId,
    String? title,
    String? type,
    String? pageUrl,
    String? pdfUrl,
    int? year,
    List<String>? authors,
    List<String>? institutions,
    String? language,
    int? cites,
    int? citedBy,
    double? fwci,
    double? citationPercentile,
    List<String>? topics,
    int? relatedTo,
    double? apcPaid,
    List<String>? subfield,
    String? field,
    String? domain,
    bool? openAccess,
    bool? favorite,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return ArticleDbModel()
      ..id = id
      ..articleId = articleId ?? this.articleId
      ..title = title ?? this.title
      ..type = type ?? this.type
      ..pageUrl = pageUrl ?? this.pageUrl
      ..pdfUrl = pdfUrl ?? this.pdfUrl
      ..year = year ?? this.year
      ..authors = authors ?? this.authors
      ..institutions = institutions ?? this.institutions
      ..language = language ?? this.language
      ..cites = cites ?? this.cites
      ..citedBy = citedBy ?? this.citedBy
      ..fwci = fwci ?? this.fwci
      ..citationPercentile = citationPercentile ?? this.citationPercentile
      ..topics = topics ?? this.topics
      ..relatedTo = relatedTo ?? this.relatedTo
      ..apcPaid = apcPaid ?? this.apcPaid
      ..subfield = subfield ?? this.subfield
      ..field = field ?? this.field
      ..domain = domain ?? this.domain
      ..openAccess = openAccess ?? this.openAccess
      ..favorite = favorite ?? this.favorite
      ..createdAt = createdAt ?? this.createdAt
      ..updatedAt = updatedAt ?? this.updatedAt;
  }
}
