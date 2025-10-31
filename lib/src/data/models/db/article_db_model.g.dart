// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_db_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetArticleDbModelCollection on Isar {
  IsarCollection<ArticleDbModel> get articleDbModels => this.collection();
}

const ArticleDbModelSchema = CollectionSchema(
  name: r'ArticleDbModel',
  id: -8620337495531261797,
  properties: {
    r'apcPaid': PropertySchema(id: 0, name: r'apcPaid', type: IsarType.double),
    r'articleId': PropertySchema(
      id: 1,
      name: r'articleId',
      type: IsarType.string,
    ),
    r'authors': PropertySchema(
      id: 2,
      name: r'authors',
      type: IsarType.stringList,
    ),
    r'citationPercentile': PropertySchema(
      id: 3,
      name: r'citationPercentile',
      type: IsarType.double,
    ),
    r'citedBy': PropertySchema(id: 4, name: r'citedBy', type: IsarType.long),
    r'cites': PropertySchema(id: 5, name: r'cites', type: IsarType.long),
    r'createdAt': PropertySchema(
      id: 6,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'domain': PropertySchema(id: 7, name: r'domain', type: IsarType.string),
    r'favorite': PropertySchema(id: 8, name: r'favorite', type: IsarType.bool),
    r'field': PropertySchema(id: 9, name: r'field', type: IsarType.string),
    r'fwci': PropertySchema(id: 10, name: r'fwci', type: IsarType.double),
    r'institutions': PropertySchema(
      id: 11,
      name: r'institutions',
      type: IsarType.stringList,
    ),
    r'language': PropertySchema(
      id: 12,
      name: r'language',
      type: IsarType.string,
    ),
    r'openAccess': PropertySchema(
      id: 13,
      name: r'openAccess',
      type: IsarType.bool,
    ),
    r'pageUrl': PropertySchema(id: 14, name: r'pageUrl', type: IsarType.string),
    r'pdfUrl': PropertySchema(id: 15, name: r'pdfUrl', type: IsarType.string),
    r'relatedTo': PropertySchema(
      id: 16,
      name: r'relatedTo',
      type: IsarType.long,
    ),
    r'subfield': PropertySchema(
      id: 17,
      name: r'subfield',
      type: IsarType.stringList,
    ),
    r'title': PropertySchema(id: 18, name: r'title', type: IsarType.string),
    r'topics': PropertySchema(
      id: 19,
      name: r'topics',
      type: IsarType.stringList,
    ),
    r'type': PropertySchema(id: 20, name: r'type', type: IsarType.string),
    r'updatedAt': PropertySchema(
      id: 21,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'year': PropertySchema(id: 22, name: r'year', type: IsarType.long),
  },

  estimateSize: _articleDbModelEstimateSize,
  serialize: _articleDbModelSerialize,
  deserialize: _articleDbModelDeserialize,
  deserializeProp: _articleDbModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'articleId': IndexSchema(
      id: 2849477555030470394,
      name: r'articleId',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'articleId',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
    r'favorite': IndexSchema(
      id: 4264748667377999100,
      name: r'favorite',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'favorite',
          type: IndexType.value,
          caseSensitive: false,
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},

  getId: _articleDbModelGetId,
  getLinks: _articleDbModelGetLinks,
  attach: _articleDbModelAttach,
  version: '3.3.0-dev.3',
);

int _articleDbModelEstimateSize(
  ArticleDbModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.articleId.length * 3;
  bytesCount += 3 + object.authors.length * 3;
  {
    for (var i = 0; i < object.authors.length; i++) {
      final value = object.authors[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.domain.length * 3;
  bytesCount += 3 + object.field.length * 3;
  bytesCount += 3 + object.institutions.length * 3;
  {
    for (var i = 0; i < object.institutions.length; i++) {
      final value = object.institutions[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.language.length * 3;
  bytesCount += 3 + object.pageUrl.length * 3;
  bytesCount += 3 + object.pdfUrl.length * 3;
  bytesCount += 3 + object.subfield.length * 3;
  {
    for (var i = 0; i < object.subfield.length; i++) {
      final value = object.subfield[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.title.length * 3;
  bytesCount += 3 + object.topics.length * 3;
  {
    for (var i = 0; i < object.topics.length; i++) {
      final value = object.topics[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.type.length * 3;
  return bytesCount;
}

void _articleDbModelSerialize(
  ArticleDbModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.apcPaid);
  writer.writeString(offsets[1], object.articleId);
  writer.writeStringList(offsets[2], object.authors);
  writer.writeDouble(offsets[3], object.citationPercentile);
  writer.writeLong(offsets[4], object.citedBy);
  writer.writeLong(offsets[5], object.cites);
  writer.writeDateTime(offsets[6], object.createdAt);
  writer.writeString(offsets[7], object.domain);
  writer.writeBool(offsets[8], object.favorite);
  writer.writeString(offsets[9], object.field);
  writer.writeDouble(offsets[10], object.fwci);
  writer.writeStringList(offsets[11], object.institutions);
  writer.writeString(offsets[12], object.language);
  writer.writeBool(offsets[13], object.openAccess);
  writer.writeString(offsets[14], object.pageUrl);
  writer.writeString(offsets[15], object.pdfUrl);
  writer.writeLong(offsets[16], object.relatedTo);
  writer.writeStringList(offsets[17], object.subfield);
  writer.writeString(offsets[18], object.title);
  writer.writeStringList(offsets[19], object.topics);
  writer.writeString(offsets[20], object.type);
  writer.writeDateTime(offsets[21], object.updatedAt);
  writer.writeLong(offsets[22], object.year);
}

ArticleDbModel _articleDbModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ArticleDbModel();
  object.apcPaid = reader.readDouble(offsets[0]);
  object.articleId = reader.readString(offsets[1]);
  object.authors = reader.readStringList(offsets[2]) ?? [];
  object.citationPercentile = reader.readDouble(offsets[3]);
  object.citedBy = reader.readLong(offsets[4]);
  object.cites = reader.readLong(offsets[5]);
  object.createdAt = reader.readDateTime(offsets[6]);
  object.domain = reader.readString(offsets[7]);
  object.favorite = reader.readBool(offsets[8]);
  object.field = reader.readString(offsets[9]);
  object.fwci = reader.readDouble(offsets[10]);
  object.id = id;
  object.institutions = reader.readStringList(offsets[11]) ?? [];
  object.language = reader.readString(offsets[12]);
  object.openAccess = reader.readBool(offsets[13]);
  object.pageUrl = reader.readString(offsets[14]);
  object.pdfUrl = reader.readString(offsets[15]);
  object.relatedTo = reader.readLong(offsets[16]);
  object.subfield = reader.readStringList(offsets[17]) ?? [];
  object.title = reader.readString(offsets[18]);
  object.topics = reader.readStringList(offsets[19]) ?? [];
  object.type = reader.readString(offsets[20]);
  object.updatedAt = reader.readDateTimeOrNull(offsets[21]);
  object.year = reader.readLong(offsets[22]);
  return object;
}

P _articleDbModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readStringList(offset) ?? []) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readDateTime(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readBool(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readDouble(offset)) as P;
    case 11:
      return (reader.readStringList(offset) ?? []) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readBool(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    case 16:
      return (reader.readLong(offset)) as P;
    case 17:
      return (reader.readStringList(offset) ?? []) as P;
    case 18:
      return (reader.readString(offset)) as P;
    case 19:
      return (reader.readStringList(offset) ?? []) as P;
    case 20:
      return (reader.readString(offset)) as P;
    case 21:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 22:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _articleDbModelGetId(ArticleDbModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _articleDbModelGetLinks(ArticleDbModel object) {
  return [];
}

void _articleDbModelAttach(
  IsarCollection<dynamic> col,
  Id id,
  ArticleDbModel object,
) {
  object.id = id;
}

extension ArticleDbModelByIndex on IsarCollection<ArticleDbModel> {
  Future<ArticleDbModel?> getByArticleId(String articleId) {
    return getByIndex(r'articleId', [articleId]);
  }

  ArticleDbModel? getByArticleIdSync(String articleId) {
    return getByIndexSync(r'articleId', [articleId]);
  }

  Future<bool> deleteByArticleId(String articleId) {
    return deleteByIndex(r'articleId', [articleId]);
  }

  bool deleteByArticleIdSync(String articleId) {
    return deleteByIndexSync(r'articleId', [articleId]);
  }

  Future<List<ArticleDbModel?>> getAllByArticleId(
    List<String> articleIdValues,
  ) {
    final values = articleIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'articleId', values);
  }

  List<ArticleDbModel?> getAllByArticleIdSync(List<String> articleIdValues) {
    final values = articleIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'articleId', values);
  }

  Future<int> deleteAllByArticleId(List<String> articleIdValues) {
    final values = articleIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'articleId', values);
  }

  int deleteAllByArticleIdSync(List<String> articleIdValues) {
    final values = articleIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'articleId', values);
  }

  Future<Id> putByArticleId(ArticleDbModel object) {
    return putByIndex(r'articleId', object);
  }

  Id putByArticleIdSync(ArticleDbModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'articleId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByArticleId(List<ArticleDbModel> objects) {
    return putAllByIndex(r'articleId', objects);
  }

  List<Id> putAllByArticleIdSync(
    List<ArticleDbModel> objects, {
    bool saveLinks = true,
  }) {
    return putAllByIndexSync(r'articleId', objects, saveLinks: saveLinks);
  }
}

extension ArticleDbModelQueryWhereSort
    on QueryBuilder<ArticleDbModel, ArticleDbModel, QWhere> {
  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterWhere> anyFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'favorite'),
      );
    });
  }
}

extension ArticleDbModelQueryWhere
    on QueryBuilder<ArticleDbModel, ArticleDbModel, QWhereClause> {
  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterWhereClause> idEqualTo(
    Id id,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterWhereClause> idNotEqualTo(
    Id id,
  ) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterWhereClause> idGreaterThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterWhereClause> idLessThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerId,
          includeLower: includeLower,
          upper: upperId,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterWhereClause>
  articleIdEqualTo(String articleId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'articleId', value: [articleId]),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterWhereClause>
  articleIdNotEqualTo(String articleId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'articleId',
                lower: [],
                upper: [articleId],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'articleId',
                lower: [articleId],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'articleId',
                lower: [articleId],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'articleId',
                lower: [],
                upper: [articleId],
                includeUpper: false,
              ),
            );
      }
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterWhereClause>
  favoriteEqualTo(bool favorite) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'favorite', value: [favorite]),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterWhereClause>
  favoriteNotEqualTo(bool favorite) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'favorite',
                lower: [],
                upper: [favorite],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'favorite',
                lower: [favorite],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'favorite',
                lower: [favorite],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'favorite',
                lower: [],
                upper: [favorite],
                includeUpper: false,
              ),
            );
      }
    });
  }
}

extension ArticleDbModelQueryFilter
    on QueryBuilder<ArticleDbModel, ArticleDbModel, QFilterCondition> {
  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  apcPaidEqualTo(double value, {double epsilon = Query.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'apcPaid',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  apcPaidGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'apcPaid',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  apcPaidLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'apcPaid',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  apcPaidBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'apcPaid',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  articleIdEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'articleId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  articleIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'articleId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  articleIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'articleId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  articleIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'articleId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  articleIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'articleId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  articleIdEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'articleId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  articleIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'articleId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  articleIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'articleId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  articleIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'articleId', value: ''),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  articleIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'articleId', value: ''),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  authorsElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'authors',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  authorsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'authors',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  authorsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'authors',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  authorsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'authors',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  authorsElementStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'authors',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  authorsElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'authors',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  authorsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'authors',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  authorsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'authors',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  authorsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'authors', value: ''),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  authorsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'authors', value: ''),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  authorsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'authors', length, true, length, true);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  authorsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'authors', 0, true, 0, true);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  authorsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'authors', 0, false, 999999, true);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  authorsLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'authors', 0, true, length, include);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  authorsLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'authors', length, include, 999999, true);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  authorsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'authors',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  citationPercentileEqualTo(double value, {double epsilon = Query.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'citationPercentile',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  citationPercentileGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'citationPercentile',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  citationPercentileLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'citationPercentile',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  citationPercentileBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'citationPercentile',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  citedByEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'citedBy', value: value),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  citedByGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'citedBy',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  citedByLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'citedBy',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  citedByBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'citedBy',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  citesEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'cites', value: value),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  citesGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'cites',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  citesLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'cites',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  citesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'cites',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'createdAt', value: value),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  createdAtGreaterThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'createdAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  createdAtLessThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'createdAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'createdAt',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  domainEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'domain',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  domainGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'domain',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  domainLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'domain',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  domainBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'domain',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  domainStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'domain',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  domainEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'domain',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  domainContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'domain',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  domainMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'domain',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  domainIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'domain', value: ''),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  domainIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'domain', value: ''),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  favoriteEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'favorite', value: value),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  fieldEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'field',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  fieldGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'field',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  fieldLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'field',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  fieldBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'field',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  fieldStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'field',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  fieldEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'field',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  fieldContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'field',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  fieldMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'field',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  fieldIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'field', value: ''),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  fieldIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'field', value: ''),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  fwciEqualTo(double value, {double epsilon = Query.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'fwci',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  fwciGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'fwci',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  fwciLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'fwci',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  fwciBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'fwci',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition> idEqualTo(
    Id value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  idGreaterThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  idLessThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  institutionsElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'institutions',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  institutionsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'institutions',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  institutionsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'institutions',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  institutionsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'institutions',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  institutionsElementStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'institutions',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  institutionsElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'institutions',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  institutionsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'institutions',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  institutionsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'institutions',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  institutionsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'institutions', value: ''),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  institutionsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'institutions', value: ''),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  institutionsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'institutions', length, true, length, true);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  institutionsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'institutions', 0, true, 0, true);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  institutionsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'institutions', 0, false, 999999, true);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  institutionsLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'institutions', 0, true, length, include);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  institutionsLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'institutions', length, include, 999999, true);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  institutionsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'institutions',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  languageEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'language',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  languageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'language',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  languageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'language',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  languageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'language',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  languageStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'language',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  languageEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'language',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  languageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'language',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  languageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'language',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  languageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'language', value: ''),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  languageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'language', value: ''),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  openAccessEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'openAccess', value: value),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  pageUrlEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'pageUrl',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  pageUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'pageUrl',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  pageUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'pageUrl',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  pageUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'pageUrl',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  pageUrlStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'pageUrl',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  pageUrlEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'pageUrl',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  pageUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'pageUrl',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  pageUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'pageUrl',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  pageUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'pageUrl', value: ''),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  pageUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'pageUrl', value: ''),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  pdfUrlEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'pdfUrl',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  pdfUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'pdfUrl',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  pdfUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'pdfUrl',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  pdfUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'pdfUrl',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  pdfUrlStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'pdfUrl',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  pdfUrlEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'pdfUrl',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  pdfUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'pdfUrl',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  pdfUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'pdfUrl',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  pdfUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'pdfUrl', value: ''),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  pdfUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'pdfUrl', value: ''),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  relatedToEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'relatedTo', value: value),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  relatedToGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'relatedTo',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  relatedToLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'relatedTo',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  relatedToBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'relatedTo',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  subfieldElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'subfield',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  subfieldElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'subfield',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  subfieldElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'subfield',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  subfieldElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'subfield',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  subfieldElementStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'subfield',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  subfieldElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'subfield',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  subfieldElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'subfield',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  subfieldElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'subfield',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  subfieldElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'subfield', value: ''),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  subfieldElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'subfield', value: ''),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  subfieldLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'subfield', length, true, length, true);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  subfieldIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'subfield', 0, true, 0, true);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  subfieldIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'subfield', 0, false, 999999, true);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  subfieldLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'subfield', 0, true, length, include);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  subfieldLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'subfield', length, include, 999999, true);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  subfieldLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'subfield',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  titleEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'title',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'title',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'title',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'title',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  titleStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'title',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  titleEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'title',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  titleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'title',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  titleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'title',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'title', value: ''),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'title', value: ''),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  topicsElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'topics',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  topicsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'topics',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  topicsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'topics',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  topicsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'topics',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  topicsElementStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'topics',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  topicsElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'topics',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  topicsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'topics',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  topicsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'topics',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  topicsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'topics', value: ''),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  topicsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'topics', value: ''),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  topicsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'topics', length, true, length, true);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  topicsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'topics', 0, true, 0, true);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  topicsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'topics', 0, false, 999999, true);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  topicsLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'topics', 0, true, length, include);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  topicsLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'topics', length, include, 999999, true);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  topicsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'topics',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  typeEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'type',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  typeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'type',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  typeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'type',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  typeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'type',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  typeStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'type',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  typeEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'type',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  typeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'type',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  typeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'type',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'type', value: ''),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'type', value: ''),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'updatedAt'),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'updatedAt'),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  updatedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'updatedAt', value: value),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  updatedAtGreaterThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'updatedAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  updatedAtLessThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'updatedAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  updatedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'updatedAt',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  yearEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'year', value: value),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  yearGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'year',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  yearLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'year',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterFilterCondition>
  yearBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'year',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }
}

extension ArticleDbModelQueryObject
    on QueryBuilder<ArticleDbModel, ArticleDbModel, QFilterCondition> {}

extension ArticleDbModelQueryLinks
    on QueryBuilder<ArticleDbModel, ArticleDbModel, QFilterCondition> {}

extension ArticleDbModelQuerySortBy
    on QueryBuilder<ArticleDbModel, ArticleDbModel, QSortBy> {
  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> sortByApcPaid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apcPaid', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy>
  sortByApcPaidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apcPaid', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> sortByArticleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'articleId', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy>
  sortByArticleIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'articleId', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy>
  sortByCitationPercentile() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'citationPercentile', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy>
  sortByCitationPercentileDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'citationPercentile', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> sortByCitedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'citedBy', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy>
  sortByCitedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'citedBy', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> sortByCites() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cites', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> sortByCitesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cites', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy>
  sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> sortByDomain() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'domain', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy>
  sortByDomainDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'domain', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> sortByFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'favorite', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy>
  sortByFavoriteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'favorite', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> sortByField() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'field', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> sortByFieldDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'field', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> sortByFwci() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fwci', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> sortByFwciDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fwci', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> sortByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy>
  sortByLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy>
  sortByOpenAccess() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'openAccess', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy>
  sortByOpenAccessDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'openAccess', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> sortByPageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pageUrl', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy>
  sortByPageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pageUrl', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> sortByPdfUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pdfUrl', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy>
  sortByPdfUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pdfUrl', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> sortByRelatedTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relatedTo', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy>
  sortByRelatedToDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relatedTo', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy>
  sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> sortByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> sortByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension ArticleDbModelQuerySortThenBy
    on QueryBuilder<ArticleDbModel, ArticleDbModel, QSortThenBy> {
  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> thenByApcPaid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apcPaid', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy>
  thenByApcPaidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apcPaid', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> thenByArticleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'articleId', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy>
  thenByArticleIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'articleId', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy>
  thenByCitationPercentile() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'citationPercentile', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy>
  thenByCitationPercentileDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'citationPercentile', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> thenByCitedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'citedBy', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy>
  thenByCitedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'citedBy', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> thenByCites() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cites', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> thenByCitesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cites', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy>
  thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> thenByDomain() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'domain', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy>
  thenByDomainDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'domain', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> thenByFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'favorite', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy>
  thenByFavoriteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'favorite', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> thenByField() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'field', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> thenByFieldDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'field', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> thenByFwci() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fwci', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> thenByFwciDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fwci', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> thenByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy>
  thenByLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy>
  thenByOpenAccess() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'openAccess', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy>
  thenByOpenAccessDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'openAccess', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> thenByPageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pageUrl', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy>
  thenByPageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pageUrl', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> thenByPdfUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pdfUrl', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy>
  thenByPdfUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pdfUrl', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> thenByRelatedTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relatedTo', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy>
  thenByRelatedToDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relatedTo', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy>
  thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> thenByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QAfterSortBy> thenByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension ArticleDbModelQueryWhereDistinct
    on QueryBuilder<ArticleDbModel, ArticleDbModel, QDistinct> {
  QueryBuilder<ArticleDbModel, ArticleDbModel, QDistinct> distinctByApcPaid() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'apcPaid');
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QDistinct> distinctByArticleId({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'articleId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QDistinct> distinctByAuthors() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'authors');
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QDistinct>
  distinctByCitationPercentile() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'citationPercentile');
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QDistinct> distinctByCitedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'citedBy');
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QDistinct> distinctByCites() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cites');
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QDistinct>
  distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QDistinct> distinctByDomain({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'domain', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QDistinct> distinctByFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'favorite');
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QDistinct> distinctByField({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'field', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QDistinct> distinctByFwci() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fwci');
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QDistinct>
  distinctByInstitutions() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'institutions');
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QDistinct> distinctByLanguage({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'language', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QDistinct>
  distinctByOpenAccess() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'openAccess');
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QDistinct> distinctByPageUrl({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pageUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QDistinct> distinctByPdfUrl({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pdfUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QDistinct>
  distinctByRelatedTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'relatedTo');
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QDistinct> distinctBySubfield() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subfield');
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QDistinct> distinctByTitle({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QDistinct> distinctByTopics() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'topics');
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QDistinct> distinctByType({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QDistinct>
  distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<ArticleDbModel, ArticleDbModel, QDistinct> distinctByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'year');
    });
  }
}

extension ArticleDbModelQueryProperty
    on QueryBuilder<ArticleDbModel, ArticleDbModel, QQueryProperty> {
  QueryBuilder<ArticleDbModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ArticleDbModel, double, QQueryOperations> apcPaidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'apcPaid');
    });
  }

  QueryBuilder<ArticleDbModel, String, QQueryOperations> articleIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'articleId');
    });
  }

  QueryBuilder<ArticleDbModel, List<String>, QQueryOperations>
  authorsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'authors');
    });
  }

  QueryBuilder<ArticleDbModel, double, QQueryOperations>
  citationPercentileProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'citationPercentile');
    });
  }

  QueryBuilder<ArticleDbModel, int, QQueryOperations> citedByProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'citedBy');
    });
  }

  QueryBuilder<ArticleDbModel, int, QQueryOperations> citesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cites');
    });
  }

  QueryBuilder<ArticleDbModel, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<ArticleDbModel, String, QQueryOperations> domainProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'domain');
    });
  }

  QueryBuilder<ArticleDbModel, bool, QQueryOperations> favoriteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'favorite');
    });
  }

  QueryBuilder<ArticleDbModel, String, QQueryOperations> fieldProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'field');
    });
  }

  QueryBuilder<ArticleDbModel, double, QQueryOperations> fwciProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fwci');
    });
  }

  QueryBuilder<ArticleDbModel, List<String>, QQueryOperations>
  institutionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'institutions');
    });
  }

  QueryBuilder<ArticleDbModel, String, QQueryOperations> languageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'language');
    });
  }

  QueryBuilder<ArticleDbModel, bool, QQueryOperations> openAccessProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'openAccess');
    });
  }

  QueryBuilder<ArticleDbModel, String, QQueryOperations> pageUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pageUrl');
    });
  }

  QueryBuilder<ArticleDbModel, String, QQueryOperations> pdfUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pdfUrl');
    });
  }

  QueryBuilder<ArticleDbModel, int, QQueryOperations> relatedToProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'relatedTo');
    });
  }

  QueryBuilder<ArticleDbModel, List<String>, QQueryOperations>
  subfieldProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subfield');
    });
  }

  QueryBuilder<ArticleDbModel, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<ArticleDbModel, List<String>, QQueryOperations>
  topicsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'topics');
    });
  }

  QueryBuilder<ArticleDbModel, String, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<ArticleDbModel, DateTime?, QQueryOperations>
  updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<ArticleDbModel, int, QQueryOperations> yearProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'year');
    });
  }
}
