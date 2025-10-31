// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkDto {

 String? get id;@UriConverter() Uri? get doi; String? get title; String? get displayName; int? get publicationYear;@DateTimeConverter() DateTime? get publicationDate; WorkIdsDto? get ids; String? get language; PrimaryLocationDto? get primaryLocation; String? get type; String? get typeCrossref; List<String>? get indexedIn; OpenAccessDto? get openAccess; List<AuthorshipDto>? get authorships; int? get countriesDistinctCount; int? get institutionsDistinctCount; List<String>? get correspondingAuthorIds; List<String>? get correspondingInstitutionIds; MoneyDto? get apcList; MoneyDto? get apcPaid; double? get fwci; bool? get hasFulltext; String? get fulltextOrigin; int? get citedByCount; CitationNormalizedPercentileDto? get citationNormalizedPercentile; IntRangeDto? get citedByPercentileYear; BiblioDto? get biblio; bool? get isRetracted; bool? get isParatext; TopicDto? get primaryTopic; List<TopicDto>? get topics; List<KeywordDto>? get keywords; List<ConceptDto>? get concepts; List<dynamic>? get mesh; int? get locationsCount; List<LocationDto>? get locations; LocationDto? get bestOaLocation; List<dynamic>? get sustainableDevelopmentGoals; List<dynamic>? get grants; List<dynamic>? get datasets; List<dynamic>? get versions; int? get referencedWorksCount; List<String>? get referencedWorks; List<String>? get relatedWorks;/// OpenAlex entrega el abstract como inverted index (no texto plano).
/// Lo modelamos como Map\<String, List\<int\>\> y lo reconstruimos fuera.
 Map<String, List<int>>? get abstractInvertedIndex; List<CountByYearDto>? get countsByYear;@DateTimeConverter() DateTime? get updatedDate;@DateTimeConverter() DateTime? get createdDate;
/// Create a copy of WorkDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkDtoCopyWith<WorkDto> get copyWith => _$WorkDtoCopyWithImpl<WorkDto>(this as WorkDto, _$identity);

  /// Serializes this WorkDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkDto&&(identical(other.id, id) || other.id == id)&&(identical(other.doi, doi) || other.doi == doi)&&(identical(other.title, title) || other.title == title)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.publicationYear, publicationYear) || other.publicationYear == publicationYear)&&(identical(other.publicationDate, publicationDate) || other.publicationDate == publicationDate)&&(identical(other.ids, ids) || other.ids == ids)&&(identical(other.language, language) || other.language == language)&&(identical(other.primaryLocation, primaryLocation) || other.primaryLocation == primaryLocation)&&(identical(other.type, type) || other.type == type)&&(identical(other.typeCrossref, typeCrossref) || other.typeCrossref == typeCrossref)&&const DeepCollectionEquality().equals(other.indexedIn, indexedIn)&&(identical(other.openAccess, openAccess) || other.openAccess == openAccess)&&const DeepCollectionEquality().equals(other.authorships, authorships)&&(identical(other.countriesDistinctCount, countriesDistinctCount) || other.countriesDistinctCount == countriesDistinctCount)&&(identical(other.institutionsDistinctCount, institutionsDistinctCount) || other.institutionsDistinctCount == institutionsDistinctCount)&&const DeepCollectionEquality().equals(other.correspondingAuthorIds, correspondingAuthorIds)&&const DeepCollectionEquality().equals(other.correspondingInstitutionIds, correspondingInstitutionIds)&&(identical(other.apcList, apcList) || other.apcList == apcList)&&(identical(other.apcPaid, apcPaid) || other.apcPaid == apcPaid)&&(identical(other.fwci, fwci) || other.fwci == fwci)&&(identical(other.hasFulltext, hasFulltext) || other.hasFulltext == hasFulltext)&&(identical(other.fulltextOrigin, fulltextOrigin) || other.fulltextOrigin == fulltextOrigin)&&(identical(other.citedByCount, citedByCount) || other.citedByCount == citedByCount)&&(identical(other.citationNormalizedPercentile, citationNormalizedPercentile) || other.citationNormalizedPercentile == citationNormalizedPercentile)&&(identical(other.citedByPercentileYear, citedByPercentileYear) || other.citedByPercentileYear == citedByPercentileYear)&&(identical(other.biblio, biblio) || other.biblio == biblio)&&(identical(other.isRetracted, isRetracted) || other.isRetracted == isRetracted)&&(identical(other.isParatext, isParatext) || other.isParatext == isParatext)&&(identical(other.primaryTopic, primaryTopic) || other.primaryTopic == primaryTopic)&&const DeepCollectionEquality().equals(other.topics, topics)&&const DeepCollectionEquality().equals(other.keywords, keywords)&&const DeepCollectionEquality().equals(other.concepts, concepts)&&const DeepCollectionEquality().equals(other.mesh, mesh)&&(identical(other.locationsCount, locationsCount) || other.locationsCount == locationsCount)&&const DeepCollectionEquality().equals(other.locations, locations)&&(identical(other.bestOaLocation, bestOaLocation) || other.bestOaLocation == bestOaLocation)&&const DeepCollectionEquality().equals(other.sustainableDevelopmentGoals, sustainableDevelopmentGoals)&&const DeepCollectionEquality().equals(other.grants, grants)&&const DeepCollectionEquality().equals(other.datasets, datasets)&&const DeepCollectionEquality().equals(other.versions, versions)&&(identical(other.referencedWorksCount, referencedWorksCount) || other.referencedWorksCount == referencedWorksCount)&&const DeepCollectionEquality().equals(other.referencedWorks, referencedWorks)&&const DeepCollectionEquality().equals(other.relatedWorks, relatedWorks)&&const DeepCollectionEquality().equals(other.abstractInvertedIndex, abstractInvertedIndex)&&const DeepCollectionEquality().equals(other.countsByYear, countsByYear)&&(identical(other.updatedDate, updatedDate) || other.updatedDate == updatedDate)&&(identical(other.createdDate, createdDate) || other.createdDate == createdDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,doi,title,displayName,publicationYear,publicationDate,ids,language,primaryLocation,type,typeCrossref,const DeepCollectionEquality().hash(indexedIn),openAccess,const DeepCollectionEquality().hash(authorships),countriesDistinctCount,institutionsDistinctCount,const DeepCollectionEquality().hash(correspondingAuthorIds),const DeepCollectionEquality().hash(correspondingInstitutionIds),apcList,apcPaid,fwci,hasFulltext,fulltextOrigin,citedByCount,citationNormalizedPercentile,citedByPercentileYear,biblio,isRetracted,isParatext,primaryTopic,const DeepCollectionEquality().hash(topics),const DeepCollectionEquality().hash(keywords),const DeepCollectionEquality().hash(concepts),const DeepCollectionEquality().hash(mesh),locationsCount,const DeepCollectionEquality().hash(locations),bestOaLocation,const DeepCollectionEquality().hash(sustainableDevelopmentGoals),const DeepCollectionEquality().hash(grants),const DeepCollectionEquality().hash(datasets),const DeepCollectionEquality().hash(versions),referencedWorksCount,const DeepCollectionEquality().hash(referencedWorks),const DeepCollectionEquality().hash(relatedWorks),const DeepCollectionEquality().hash(abstractInvertedIndex),const DeepCollectionEquality().hash(countsByYear),updatedDate,createdDate]);

@override
String toString() {
  return 'WorkDto(id: $id, doi: $doi, title: $title, displayName: $displayName, publicationYear: $publicationYear, publicationDate: $publicationDate, ids: $ids, language: $language, primaryLocation: $primaryLocation, type: $type, typeCrossref: $typeCrossref, indexedIn: $indexedIn, openAccess: $openAccess, authorships: $authorships, countriesDistinctCount: $countriesDistinctCount, institutionsDistinctCount: $institutionsDistinctCount, correspondingAuthorIds: $correspondingAuthorIds, correspondingInstitutionIds: $correspondingInstitutionIds, apcList: $apcList, apcPaid: $apcPaid, fwci: $fwci, hasFulltext: $hasFulltext, fulltextOrigin: $fulltextOrigin, citedByCount: $citedByCount, citationNormalizedPercentile: $citationNormalizedPercentile, citedByPercentileYear: $citedByPercentileYear, biblio: $biblio, isRetracted: $isRetracted, isParatext: $isParatext, primaryTopic: $primaryTopic, topics: $topics, keywords: $keywords, concepts: $concepts, mesh: $mesh, locationsCount: $locationsCount, locations: $locations, bestOaLocation: $bestOaLocation, sustainableDevelopmentGoals: $sustainableDevelopmentGoals, grants: $grants, datasets: $datasets, versions: $versions, referencedWorksCount: $referencedWorksCount, referencedWorks: $referencedWorks, relatedWorks: $relatedWorks, abstractInvertedIndex: $abstractInvertedIndex, countsByYear: $countsByYear, updatedDate: $updatedDate, createdDate: $createdDate)';
}


}

/// @nodoc
abstract mixin class $WorkDtoCopyWith<$Res>  {
  factory $WorkDtoCopyWith(WorkDto value, $Res Function(WorkDto) _then) = _$WorkDtoCopyWithImpl;
@useResult
$Res call({
 String? id,@UriConverter() Uri? doi, String? title, String? displayName, int? publicationYear,@DateTimeConverter() DateTime? publicationDate, WorkIdsDto? ids, String? language, PrimaryLocationDto? primaryLocation, String? type, String? typeCrossref, List<String>? indexedIn, OpenAccessDto? openAccess, List<AuthorshipDto>? authorships, int? countriesDistinctCount, int? institutionsDistinctCount, List<String>? correspondingAuthorIds, List<String>? correspondingInstitutionIds, MoneyDto? apcList, MoneyDto? apcPaid, double? fwci, bool? hasFulltext, String? fulltextOrigin, int? citedByCount, CitationNormalizedPercentileDto? citationNormalizedPercentile, IntRangeDto? citedByPercentileYear, BiblioDto? biblio, bool? isRetracted, bool? isParatext, TopicDto? primaryTopic, List<TopicDto>? topics, List<KeywordDto>? keywords, List<ConceptDto>? concepts, List<dynamic>? mesh, int? locationsCount, List<LocationDto>? locations, LocationDto? bestOaLocation, List<dynamic>? sustainableDevelopmentGoals, List<dynamic>? grants, List<dynamic>? datasets, List<dynamic>? versions, int? referencedWorksCount, List<String>? referencedWorks, List<String>? relatedWorks, Map<String, List<int>>? abstractInvertedIndex, List<CountByYearDto>? countsByYear,@DateTimeConverter() DateTime? updatedDate,@DateTimeConverter() DateTime? createdDate
});


$WorkIdsDtoCopyWith<$Res>? get ids;$PrimaryLocationDtoCopyWith<$Res>? get primaryLocation;$OpenAccessDtoCopyWith<$Res>? get openAccess;$MoneyDtoCopyWith<$Res>? get apcList;$MoneyDtoCopyWith<$Res>? get apcPaid;$CitationNormalizedPercentileDtoCopyWith<$Res>? get citationNormalizedPercentile;$IntRangeDtoCopyWith<$Res>? get citedByPercentileYear;$BiblioDtoCopyWith<$Res>? get biblio;$TopicDtoCopyWith<$Res>? get primaryTopic;$LocationDtoCopyWith<$Res>? get bestOaLocation;

}
/// @nodoc
class _$WorkDtoCopyWithImpl<$Res>
    implements $WorkDtoCopyWith<$Res> {
  _$WorkDtoCopyWithImpl(this._self, this._then);

  final WorkDto _self;
  final $Res Function(WorkDto) _then;

/// Create a copy of WorkDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? doi = freezed,Object? title = freezed,Object? displayName = freezed,Object? publicationYear = freezed,Object? publicationDate = freezed,Object? ids = freezed,Object? language = freezed,Object? primaryLocation = freezed,Object? type = freezed,Object? typeCrossref = freezed,Object? indexedIn = freezed,Object? openAccess = freezed,Object? authorships = freezed,Object? countriesDistinctCount = freezed,Object? institutionsDistinctCount = freezed,Object? correspondingAuthorIds = freezed,Object? correspondingInstitutionIds = freezed,Object? apcList = freezed,Object? apcPaid = freezed,Object? fwci = freezed,Object? hasFulltext = freezed,Object? fulltextOrigin = freezed,Object? citedByCount = freezed,Object? citationNormalizedPercentile = freezed,Object? citedByPercentileYear = freezed,Object? biblio = freezed,Object? isRetracted = freezed,Object? isParatext = freezed,Object? primaryTopic = freezed,Object? topics = freezed,Object? keywords = freezed,Object? concepts = freezed,Object? mesh = freezed,Object? locationsCount = freezed,Object? locations = freezed,Object? bestOaLocation = freezed,Object? sustainableDevelopmentGoals = freezed,Object? grants = freezed,Object? datasets = freezed,Object? versions = freezed,Object? referencedWorksCount = freezed,Object? referencedWorks = freezed,Object? relatedWorks = freezed,Object? abstractInvertedIndex = freezed,Object? countsByYear = freezed,Object? updatedDate = freezed,Object? createdDate = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,doi: freezed == doi ? _self.doi : doi // ignore: cast_nullable_to_non_nullable
as Uri?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,publicationYear: freezed == publicationYear ? _self.publicationYear : publicationYear // ignore: cast_nullable_to_non_nullable
as int?,publicationDate: freezed == publicationDate ? _self.publicationDate : publicationDate // ignore: cast_nullable_to_non_nullable
as DateTime?,ids: freezed == ids ? _self.ids : ids // ignore: cast_nullable_to_non_nullable
as WorkIdsDto?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,primaryLocation: freezed == primaryLocation ? _self.primaryLocation : primaryLocation // ignore: cast_nullable_to_non_nullable
as PrimaryLocationDto?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,typeCrossref: freezed == typeCrossref ? _self.typeCrossref : typeCrossref // ignore: cast_nullable_to_non_nullable
as String?,indexedIn: freezed == indexedIn ? _self.indexedIn : indexedIn // ignore: cast_nullable_to_non_nullable
as List<String>?,openAccess: freezed == openAccess ? _self.openAccess : openAccess // ignore: cast_nullable_to_non_nullable
as OpenAccessDto?,authorships: freezed == authorships ? _self.authorships : authorships // ignore: cast_nullable_to_non_nullable
as List<AuthorshipDto>?,countriesDistinctCount: freezed == countriesDistinctCount ? _self.countriesDistinctCount : countriesDistinctCount // ignore: cast_nullable_to_non_nullable
as int?,institutionsDistinctCount: freezed == institutionsDistinctCount ? _self.institutionsDistinctCount : institutionsDistinctCount // ignore: cast_nullable_to_non_nullable
as int?,correspondingAuthorIds: freezed == correspondingAuthorIds ? _self.correspondingAuthorIds : correspondingAuthorIds // ignore: cast_nullable_to_non_nullable
as List<String>?,correspondingInstitutionIds: freezed == correspondingInstitutionIds ? _self.correspondingInstitutionIds : correspondingInstitutionIds // ignore: cast_nullable_to_non_nullable
as List<String>?,apcList: freezed == apcList ? _self.apcList : apcList // ignore: cast_nullable_to_non_nullable
as MoneyDto?,apcPaid: freezed == apcPaid ? _self.apcPaid : apcPaid // ignore: cast_nullable_to_non_nullable
as MoneyDto?,fwci: freezed == fwci ? _self.fwci : fwci // ignore: cast_nullable_to_non_nullable
as double?,hasFulltext: freezed == hasFulltext ? _self.hasFulltext : hasFulltext // ignore: cast_nullable_to_non_nullable
as bool?,fulltextOrigin: freezed == fulltextOrigin ? _self.fulltextOrigin : fulltextOrigin // ignore: cast_nullable_to_non_nullable
as String?,citedByCount: freezed == citedByCount ? _self.citedByCount : citedByCount // ignore: cast_nullable_to_non_nullable
as int?,citationNormalizedPercentile: freezed == citationNormalizedPercentile ? _self.citationNormalizedPercentile : citationNormalizedPercentile // ignore: cast_nullable_to_non_nullable
as CitationNormalizedPercentileDto?,citedByPercentileYear: freezed == citedByPercentileYear ? _self.citedByPercentileYear : citedByPercentileYear // ignore: cast_nullable_to_non_nullable
as IntRangeDto?,biblio: freezed == biblio ? _self.biblio : biblio // ignore: cast_nullable_to_non_nullable
as BiblioDto?,isRetracted: freezed == isRetracted ? _self.isRetracted : isRetracted // ignore: cast_nullable_to_non_nullable
as bool?,isParatext: freezed == isParatext ? _self.isParatext : isParatext // ignore: cast_nullable_to_non_nullable
as bool?,primaryTopic: freezed == primaryTopic ? _self.primaryTopic : primaryTopic // ignore: cast_nullable_to_non_nullable
as TopicDto?,topics: freezed == topics ? _self.topics : topics // ignore: cast_nullable_to_non_nullable
as List<TopicDto>?,keywords: freezed == keywords ? _self.keywords : keywords // ignore: cast_nullable_to_non_nullable
as List<KeywordDto>?,concepts: freezed == concepts ? _self.concepts : concepts // ignore: cast_nullable_to_non_nullable
as List<ConceptDto>?,mesh: freezed == mesh ? _self.mesh : mesh // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,locationsCount: freezed == locationsCount ? _self.locationsCount : locationsCount // ignore: cast_nullable_to_non_nullable
as int?,locations: freezed == locations ? _self.locations : locations // ignore: cast_nullable_to_non_nullable
as List<LocationDto>?,bestOaLocation: freezed == bestOaLocation ? _self.bestOaLocation : bestOaLocation // ignore: cast_nullable_to_non_nullable
as LocationDto?,sustainableDevelopmentGoals: freezed == sustainableDevelopmentGoals ? _self.sustainableDevelopmentGoals : sustainableDevelopmentGoals // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,grants: freezed == grants ? _self.grants : grants // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,datasets: freezed == datasets ? _self.datasets : datasets // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,versions: freezed == versions ? _self.versions : versions // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,referencedWorksCount: freezed == referencedWorksCount ? _self.referencedWorksCount : referencedWorksCount // ignore: cast_nullable_to_non_nullable
as int?,referencedWorks: freezed == referencedWorks ? _self.referencedWorks : referencedWorks // ignore: cast_nullable_to_non_nullable
as List<String>?,relatedWorks: freezed == relatedWorks ? _self.relatedWorks : relatedWorks // ignore: cast_nullable_to_non_nullable
as List<String>?,abstractInvertedIndex: freezed == abstractInvertedIndex ? _self.abstractInvertedIndex : abstractInvertedIndex // ignore: cast_nullable_to_non_nullable
as Map<String, List<int>>?,countsByYear: freezed == countsByYear ? _self.countsByYear : countsByYear // ignore: cast_nullable_to_non_nullable
as List<CountByYearDto>?,updatedDate: freezed == updatedDate ? _self.updatedDate : updatedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,createdDate: freezed == createdDate ? _self.createdDate : createdDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of WorkDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkIdsDtoCopyWith<$Res>? get ids {
    if (_self.ids == null) {
    return null;
  }

  return $WorkIdsDtoCopyWith<$Res>(_self.ids!, (value) {
    return _then(_self.copyWith(ids: value));
  });
}/// Create a copy of WorkDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrimaryLocationDtoCopyWith<$Res>? get primaryLocation {
    if (_self.primaryLocation == null) {
    return null;
  }

  return $PrimaryLocationDtoCopyWith<$Res>(_self.primaryLocation!, (value) {
    return _then(_self.copyWith(primaryLocation: value));
  });
}/// Create a copy of WorkDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OpenAccessDtoCopyWith<$Res>? get openAccess {
    if (_self.openAccess == null) {
    return null;
  }

  return $OpenAccessDtoCopyWith<$Res>(_self.openAccess!, (value) {
    return _then(_self.copyWith(openAccess: value));
  });
}/// Create a copy of WorkDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyDtoCopyWith<$Res>? get apcList {
    if (_self.apcList == null) {
    return null;
  }

  return $MoneyDtoCopyWith<$Res>(_self.apcList!, (value) {
    return _then(_self.copyWith(apcList: value));
  });
}/// Create a copy of WorkDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyDtoCopyWith<$Res>? get apcPaid {
    if (_self.apcPaid == null) {
    return null;
  }

  return $MoneyDtoCopyWith<$Res>(_self.apcPaid!, (value) {
    return _then(_self.copyWith(apcPaid: value));
  });
}/// Create a copy of WorkDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CitationNormalizedPercentileDtoCopyWith<$Res>? get citationNormalizedPercentile {
    if (_self.citationNormalizedPercentile == null) {
    return null;
  }

  return $CitationNormalizedPercentileDtoCopyWith<$Res>(_self.citationNormalizedPercentile!, (value) {
    return _then(_self.copyWith(citationNormalizedPercentile: value));
  });
}/// Create a copy of WorkDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IntRangeDtoCopyWith<$Res>? get citedByPercentileYear {
    if (_self.citedByPercentileYear == null) {
    return null;
  }

  return $IntRangeDtoCopyWith<$Res>(_self.citedByPercentileYear!, (value) {
    return _then(_self.copyWith(citedByPercentileYear: value));
  });
}/// Create a copy of WorkDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BiblioDtoCopyWith<$Res>? get biblio {
    if (_self.biblio == null) {
    return null;
  }

  return $BiblioDtoCopyWith<$Res>(_self.biblio!, (value) {
    return _then(_self.copyWith(biblio: value));
  });
}/// Create a copy of WorkDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TopicDtoCopyWith<$Res>? get primaryTopic {
    if (_self.primaryTopic == null) {
    return null;
  }

  return $TopicDtoCopyWith<$Res>(_self.primaryTopic!, (value) {
    return _then(_self.copyWith(primaryTopic: value));
  });
}/// Create a copy of WorkDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationDtoCopyWith<$Res>? get bestOaLocation {
    if (_self.bestOaLocation == null) {
    return null;
  }

  return $LocationDtoCopyWith<$Res>(_self.bestOaLocation!, (value) {
    return _then(_self.copyWith(bestOaLocation: value));
  });
}
}


/// Adds pattern-matching-related methods to [WorkDto].
extension WorkDtoPatterns on WorkDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkDto value)  $default,){
final _that = this;
switch (_that) {
case _WorkDto():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkDto value)?  $default,){
final _that = this;
switch (_that) {
case _WorkDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id, @UriConverter()  Uri? doi,  String? title,  String? displayName,  int? publicationYear, @DateTimeConverter()  DateTime? publicationDate,  WorkIdsDto? ids,  String? language,  PrimaryLocationDto? primaryLocation,  String? type,  String? typeCrossref,  List<String>? indexedIn,  OpenAccessDto? openAccess,  List<AuthorshipDto>? authorships,  int? countriesDistinctCount,  int? institutionsDistinctCount,  List<String>? correspondingAuthorIds,  List<String>? correspondingInstitutionIds,  MoneyDto? apcList,  MoneyDto? apcPaid,  double? fwci,  bool? hasFulltext,  String? fulltextOrigin,  int? citedByCount,  CitationNormalizedPercentileDto? citationNormalizedPercentile,  IntRangeDto? citedByPercentileYear,  BiblioDto? biblio,  bool? isRetracted,  bool? isParatext,  TopicDto? primaryTopic,  List<TopicDto>? topics,  List<KeywordDto>? keywords,  List<ConceptDto>? concepts,  List<dynamic>? mesh,  int? locationsCount,  List<LocationDto>? locations,  LocationDto? bestOaLocation,  List<dynamic>? sustainableDevelopmentGoals,  List<dynamic>? grants,  List<dynamic>? datasets,  List<dynamic>? versions,  int? referencedWorksCount,  List<String>? referencedWorks,  List<String>? relatedWorks,  Map<String, List<int>>? abstractInvertedIndex,  List<CountByYearDto>? countsByYear, @DateTimeConverter()  DateTime? updatedDate, @DateTimeConverter()  DateTime? createdDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkDto() when $default != null:
return $default(_that.id,_that.doi,_that.title,_that.displayName,_that.publicationYear,_that.publicationDate,_that.ids,_that.language,_that.primaryLocation,_that.type,_that.typeCrossref,_that.indexedIn,_that.openAccess,_that.authorships,_that.countriesDistinctCount,_that.institutionsDistinctCount,_that.correspondingAuthorIds,_that.correspondingInstitutionIds,_that.apcList,_that.apcPaid,_that.fwci,_that.hasFulltext,_that.fulltextOrigin,_that.citedByCount,_that.citationNormalizedPercentile,_that.citedByPercentileYear,_that.biblio,_that.isRetracted,_that.isParatext,_that.primaryTopic,_that.topics,_that.keywords,_that.concepts,_that.mesh,_that.locationsCount,_that.locations,_that.bestOaLocation,_that.sustainableDevelopmentGoals,_that.grants,_that.datasets,_that.versions,_that.referencedWorksCount,_that.referencedWorks,_that.relatedWorks,_that.abstractInvertedIndex,_that.countsByYear,_that.updatedDate,_that.createdDate);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id, @UriConverter()  Uri? doi,  String? title,  String? displayName,  int? publicationYear, @DateTimeConverter()  DateTime? publicationDate,  WorkIdsDto? ids,  String? language,  PrimaryLocationDto? primaryLocation,  String? type,  String? typeCrossref,  List<String>? indexedIn,  OpenAccessDto? openAccess,  List<AuthorshipDto>? authorships,  int? countriesDistinctCount,  int? institutionsDistinctCount,  List<String>? correspondingAuthorIds,  List<String>? correspondingInstitutionIds,  MoneyDto? apcList,  MoneyDto? apcPaid,  double? fwci,  bool? hasFulltext,  String? fulltextOrigin,  int? citedByCount,  CitationNormalizedPercentileDto? citationNormalizedPercentile,  IntRangeDto? citedByPercentileYear,  BiblioDto? biblio,  bool? isRetracted,  bool? isParatext,  TopicDto? primaryTopic,  List<TopicDto>? topics,  List<KeywordDto>? keywords,  List<ConceptDto>? concepts,  List<dynamic>? mesh,  int? locationsCount,  List<LocationDto>? locations,  LocationDto? bestOaLocation,  List<dynamic>? sustainableDevelopmentGoals,  List<dynamic>? grants,  List<dynamic>? datasets,  List<dynamic>? versions,  int? referencedWorksCount,  List<String>? referencedWorks,  List<String>? relatedWorks,  Map<String, List<int>>? abstractInvertedIndex,  List<CountByYearDto>? countsByYear, @DateTimeConverter()  DateTime? updatedDate, @DateTimeConverter()  DateTime? createdDate)  $default,) {final _that = this;
switch (_that) {
case _WorkDto():
return $default(_that.id,_that.doi,_that.title,_that.displayName,_that.publicationYear,_that.publicationDate,_that.ids,_that.language,_that.primaryLocation,_that.type,_that.typeCrossref,_that.indexedIn,_that.openAccess,_that.authorships,_that.countriesDistinctCount,_that.institutionsDistinctCount,_that.correspondingAuthorIds,_that.correspondingInstitutionIds,_that.apcList,_that.apcPaid,_that.fwci,_that.hasFulltext,_that.fulltextOrigin,_that.citedByCount,_that.citationNormalizedPercentile,_that.citedByPercentileYear,_that.biblio,_that.isRetracted,_that.isParatext,_that.primaryTopic,_that.topics,_that.keywords,_that.concepts,_that.mesh,_that.locationsCount,_that.locations,_that.bestOaLocation,_that.sustainableDevelopmentGoals,_that.grants,_that.datasets,_that.versions,_that.referencedWorksCount,_that.referencedWorks,_that.relatedWorks,_that.abstractInvertedIndex,_that.countsByYear,_that.updatedDate,_that.createdDate);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id, @UriConverter()  Uri? doi,  String? title,  String? displayName,  int? publicationYear, @DateTimeConverter()  DateTime? publicationDate,  WorkIdsDto? ids,  String? language,  PrimaryLocationDto? primaryLocation,  String? type,  String? typeCrossref,  List<String>? indexedIn,  OpenAccessDto? openAccess,  List<AuthorshipDto>? authorships,  int? countriesDistinctCount,  int? institutionsDistinctCount,  List<String>? correspondingAuthorIds,  List<String>? correspondingInstitutionIds,  MoneyDto? apcList,  MoneyDto? apcPaid,  double? fwci,  bool? hasFulltext,  String? fulltextOrigin,  int? citedByCount,  CitationNormalizedPercentileDto? citationNormalizedPercentile,  IntRangeDto? citedByPercentileYear,  BiblioDto? biblio,  bool? isRetracted,  bool? isParatext,  TopicDto? primaryTopic,  List<TopicDto>? topics,  List<KeywordDto>? keywords,  List<ConceptDto>? concepts,  List<dynamic>? mesh,  int? locationsCount,  List<LocationDto>? locations,  LocationDto? bestOaLocation,  List<dynamic>? sustainableDevelopmentGoals,  List<dynamic>? grants,  List<dynamic>? datasets,  List<dynamic>? versions,  int? referencedWorksCount,  List<String>? referencedWorks,  List<String>? relatedWorks,  Map<String, List<int>>? abstractInvertedIndex,  List<CountByYearDto>? countsByYear, @DateTimeConverter()  DateTime? updatedDate, @DateTimeConverter()  DateTime? createdDate)?  $default,) {final _that = this;
switch (_that) {
case _WorkDto() when $default != null:
return $default(_that.id,_that.doi,_that.title,_that.displayName,_that.publicationYear,_that.publicationDate,_that.ids,_that.language,_that.primaryLocation,_that.type,_that.typeCrossref,_that.indexedIn,_that.openAccess,_that.authorships,_that.countriesDistinctCount,_that.institutionsDistinctCount,_that.correspondingAuthorIds,_that.correspondingInstitutionIds,_that.apcList,_that.apcPaid,_that.fwci,_that.hasFulltext,_that.fulltextOrigin,_that.citedByCount,_that.citationNormalizedPercentile,_that.citedByPercentileYear,_that.biblio,_that.isRetracted,_that.isParatext,_that.primaryTopic,_that.topics,_that.keywords,_that.concepts,_that.mesh,_that.locationsCount,_that.locations,_that.bestOaLocation,_that.sustainableDevelopmentGoals,_that.grants,_that.datasets,_that.versions,_that.referencedWorksCount,_that.referencedWorks,_that.relatedWorks,_that.abstractInvertedIndex,_that.countsByYear,_that.updatedDate,_that.createdDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkDto implements WorkDto {
  const _WorkDto({this.id, @UriConverter() this.doi, this.title, this.displayName, this.publicationYear, @DateTimeConverter() this.publicationDate, this.ids, this.language, this.primaryLocation, this.type, this.typeCrossref, final  List<String>? indexedIn, this.openAccess, final  List<AuthorshipDto>? authorships, this.countriesDistinctCount, this.institutionsDistinctCount, final  List<String>? correspondingAuthorIds, final  List<String>? correspondingInstitutionIds, this.apcList, this.apcPaid, this.fwci, this.hasFulltext, this.fulltextOrigin, this.citedByCount, this.citationNormalizedPercentile, this.citedByPercentileYear, this.biblio, this.isRetracted, this.isParatext, this.primaryTopic, final  List<TopicDto>? topics, final  List<KeywordDto>? keywords, final  List<ConceptDto>? concepts, final  List<dynamic>? mesh, this.locationsCount, final  List<LocationDto>? locations, this.bestOaLocation, final  List<dynamic>? sustainableDevelopmentGoals, final  List<dynamic>? grants, final  List<dynamic>? datasets, final  List<dynamic>? versions, this.referencedWorksCount, final  List<String>? referencedWorks, final  List<String>? relatedWorks, final  Map<String, List<int>>? abstractInvertedIndex, final  List<CountByYearDto>? countsByYear, @DateTimeConverter() this.updatedDate, @DateTimeConverter() this.createdDate}): _indexedIn = indexedIn,_authorships = authorships,_correspondingAuthorIds = correspondingAuthorIds,_correspondingInstitutionIds = correspondingInstitutionIds,_topics = topics,_keywords = keywords,_concepts = concepts,_mesh = mesh,_locations = locations,_sustainableDevelopmentGoals = sustainableDevelopmentGoals,_grants = grants,_datasets = datasets,_versions = versions,_referencedWorks = referencedWorks,_relatedWorks = relatedWorks,_abstractInvertedIndex = abstractInvertedIndex,_countsByYear = countsByYear;
  factory _WorkDto.fromJson(Map<String, dynamic> json) => _$WorkDtoFromJson(json);

@override final  String? id;
@override@UriConverter() final  Uri? doi;
@override final  String? title;
@override final  String? displayName;
@override final  int? publicationYear;
@override@DateTimeConverter() final  DateTime? publicationDate;
@override final  WorkIdsDto? ids;
@override final  String? language;
@override final  PrimaryLocationDto? primaryLocation;
@override final  String? type;
@override final  String? typeCrossref;
 final  List<String>? _indexedIn;
@override List<String>? get indexedIn {
  final value = _indexedIn;
  if (value == null) return null;
  if (_indexedIn is EqualUnmodifiableListView) return _indexedIn;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  OpenAccessDto? openAccess;
 final  List<AuthorshipDto>? _authorships;
@override List<AuthorshipDto>? get authorships {
  final value = _authorships;
  if (value == null) return null;
  if (_authorships is EqualUnmodifiableListView) return _authorships;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? countriesDistinctCount;
@override final  int? institutionsDistinctCount;
 final  List<String>? _correspondingAuthorIds;
@override List<String>? get correspondingAuthorIds {
  final value = _correspondingAuthorIds;
  if (value == null) return null;
  if (_correspondingAuthorIds is EqualUnmodifiableListView) return _correspondingAuthorIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _correspondingInstitutionIds;
@override List<String>? get correspondingInstitutionIds {
  final value = _correspondingInstitutionIds;
  if (value == null) return null;
  if (_correspondingInstitutionIds is EqualUnmodifiableListView) return _correspondingInstitutionIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  MoneyDto? apcList;
@override final  MoneyDto? apcPaid;
@override final  double? fwci;
@override final  bool? hasFulltext;
@override final  String? fulltextOrigin;
@override final  int? citedByCount;
@override final  CitationNormalizedPercentileDto? citationNormalizedPercentile;
@override final  IntRangeDto? citedByPercentileYear;
@override final  BiblioDto? biblio;
@override final  bool? isRetracted;
@override final  bool? isParatext;
@override final  TopicDto? primaryTopic;
 final  List<TopicDto>? _topics;
@override List<TopicDto>? get topics {
  final value = _topics;
  if (value == null) return null;
  if (_topics is EqualUnmodifiableListView) return _topics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<KeywordDto>? _keywords;
@override List<KeywordDto>? get keywords {
  final value = _keywords;
  if (value == null) return null;
  if (_keywords is EqualUnmodifiableListView) return _keywords;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ConceptDto>? _concepts;
@override List<ConceptDto>? get concepts {
  final value = _concepts;
  if (value == null) return null;
  if (_concepts is EqualUnmodifiableListView) return _concepts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _mesh;
@override List<dynamic>? get mesh {
  final value = _mesh;
  if (value == null) return null;
  if (_mesh is EqualUnmodifiableListView) return _mesh;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? locationsCount;
 final  List<LocationDto>? _locations;
@override List<LocationDto>? get locations {
  final value = _locations;
  if (value == null) return null;
  if (_locations is EqualUnmodifiableListView) return _locations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  LocationDto? bestOaLocation;
 final  List<dynamic>? _sustainableDevelopmentGoals;
@override List<dynamic>? get sustainableDevelopmentGoals {
  final value = _sustainableDevelopmentGoals;
  if (value == null) return null;
  if (_sustainableDevelopmentGoals is EqualUnmodifiableListView) return _sustainableDevelopmentGoals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _grants;
@override List<dynamic>? get grants {
  final value = _grants;
  if (value == null) return null;
  if (_grants is EqualUnmodifiableListView) return _grants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _datasets;
@override List<dynamic>? get datasets {
  final value = _datasets;
  if (value == null) return null;
  if (_datasets is EqualUnmodifiableListView) return _datasets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _versions;
@override List<dynamic>? get versions {
  final value = _versions;
  if (value == null) return null;
  if (_versions is EqualUnmodifiableListView) return _versions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? referencedWorksCount;
 final  List<String>? _referencedWorks;
@override List<String>? get referencedWorks {
  final value = _referencedWorks;
  if (value == null) return null;
  if (_referencedWorks is EqualUnmodifiableListView) return _referencedWorks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _relatedWorks;
@override List<String>? get relatedWorks {
  final value = _relatedWorks;
  if (value == null) return null;
  if (_relatedWorks is EqualUnmodifiableListView) return _relatedWorks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// OpenAlex entrega el abstract como inverted index (no texto plano).
/// Lo modelamos como Map\<String, List\<int\>\> y lo reconstruimos fuera.
 final  Map<String, List<int>>? _abstractInvertedIndex;
/// OpenAlex entrega el abstract como inverted index (no texto plano).
/// Lo modelamos como Map\<String, List\<int\>\> y lo reconstruimos fuera.
@override Map<String, List<int>>? get abstractInvertedIndex {
  final value = _abstractInvertedIndex;
  if (value == null) return null;
  if (_abstractInvertedIndex is EqualUnmodifiableMapView) return _abstractInvertedIndex;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<CountByYearDto>? _countsByYear;
@override List<CountByYearDto>? get countsByYear {
  final value = _countsByYear;
  if (value == null) return null;
  if (_countsByYear is EqualUnmodifiableListView) return _countsByYear;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@DateTimeConverter() final  DateTime? updatedDate;
@override@DateTimeConverter() final  DateTime? createdDate;

/// Create a copy of WorkDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkDtoCopyWith<_WorkDto> get copyWith => __$WorkDtoCopyWithImpl<_WorkDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkDto&&(identical(other.id, id) || other.id == id)&&(identical(other.doi, doi) || other.doi == doi)&&(identical(other.title, title) || other.title == title)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.publicationYear, publicationYear) || other.publicationYear == publicationYear)&&(identical(other.publicationDate, publicationDate) || other.publicationDate == publicationDate)&&(identical(other.ids, ids) || other.ids == ids)&&(identical(other.language, language) || other.language == language)&&(identical(other.primaryLocation, primaryLocation) || other.primaryLocation == primaryLocation)&&(identical(other.type, type) || other.type == type)&&(identical(other.typeCrossref, typeCrossref) || other.typeCrossref == typeCrossref)&&const DeepCollectionEquality().equals(other._indexedIn, _indexedIn)&&(identical(other.openAccess, openAccess) || other.openAccess == openAccess)&&const DeepCollectionEquality().equals(other._authorships, _authorships)&&(identical(other.countriesDistinctCount, countriesDistinctCount) || other.countriesDistinctCount == countriesDistinctCount)&&(identical(other.institutionsDistinctCount, institutionsDistinctCount) || other.institutionsDistinctCount == institutionsDistinctCount)&&const DeepCollectionEquality().equals(other._correspondingAuthorIds, _correspondingAuthorIds)&&const DeepCollectionEquality().equals(other._correspondingInstitutionIds, _correspondingInstitutionIds)&&(identical(other.apcList, apcList) || other.apcList == apcList)&&(identical(other.apcPaid, apcPaid) || other.apcPaid == apcPaid)&&(identical(other.fwci, fwci) || other.fwci == fwci)&&(identical(other.hasFulltext, hasFulltext) || other.hasFulltext == hasFulltext)&&(identical(other.fulltextOrigin, fulltextOrigin) || other.fulltextOrigin == fulltextOrigin)&&(identical(other.citedByCount, citedByCount) || other.citedByCount == citedByCount)&&(identical(other.citationNormalizedPercentile, citationNormalizedPercentile) || other.citationNormalizedPercentile == citationNormalizedPercentile)&&(identical(other.citedByPercentileYear, citedByPercentileYear) || other.citedByPercentileYear == citedByPercentileYear)&&(identical(other.biblio, biblio) || other.biblio == biblio)&&(identical(other.isRetracted, isRetracted) || other.isRetracted == isRetracted)&&(identical(other.isParatext, isParatext) || other.isParatext == isParatext)&&(identical(other.primaryTopic, primaryTopic) || other.primaryTopic == primaryTopic)&&const DeepCollectionEquality().equals(other._topics, _topics)&&const DeepCollectionEquality().equals(other._keywords, _keywords)&&const DeepCollectionEquality().equals(other._concepts, _concepts)&&const DeepCollectionEquality().equals(other._mesh, _mesh)&&(identical(other.locationsCount, locationsCount) || other.locationsCount == locationsCount)&&const DeepCollectionEquality().equals(other._locations, _locations)&&(identical(other.bestOaLocation, bestOaLocation) || other.bestOaLocation == bestOaLocation)&&const DeepCollectionEquality().equals(other._sustainableDevelopmentGoals, _sustainableDevelopmentGoals)&&const DeepCollectionEquality().equals(other._grants, _grants)&&const DeepCollectionEquality().equals(other._datasets, _datasets)&&const DeepCollectionEquality().equals(other._versions, _versions)&&(identical(other.referencedWorksCount, referencedWorksCount) || other.referencedWorksCount == referencedWorksCount)&&const DeepCollectionEquality().equals(other._referencedWorks, _referencedWorks)&&const DeepCollectionEquality().equals(other._relatedWorks, _relatedWorks)&&const DeepCollectionEquality().equals(other._abstractInvertedIndex, _abstractInvertedIndex)&&const DeepCollectionEquality().equals(other._countsByYear, _countsByYear)&&(identical(other.updatedDate, updatedDate) || other.updatedDate == updatedDate)&&(identical(other.createdDate, createdDate) || other.createdDate == createdDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,doi,title,displayName,publicationYear,publicationDate,ids,language,primaryLocation,type,typeCrossref,const DeepCollectionEquality().hash(_indexedIn),openAccess,const DeepCollectionEquality().hash(_authorships),countriesDistinctCount,institutionsDistinctCount,const DeepCollectionEquality().hash(_correspondingAuthorIds),const DeepCollectionEquality().hash(_correspondingInstitutionIds),apcList,apcPaid,fwci,hasFulltext,fulltextOrigin,citedByCount,citationNormalizedPercentile,citedByPercentileYear,biblio,isRetracted,isParatext,primaryTopic,const DeepCollectionEquality().hash(_topics),const DeepCollectionEquality().hash(_keywords),const DeepCollectionEquality().hash(_concepts),const DeepCollectionEquality().hash(_mesh),locationsCount,const DeepCollectionEquality().hash(_locations),bestOaLocation,const DeepCollectionEquality().hash(_sustainableDevelopmentGoals),const DeepCollectionEquality().hash(_grants),const DeepCollectionEquality().hash(_datasets),const DeepCollectionEquality().hash(_versions),referencedWorksCount,const DeepCollectionEquality().hash(_referencedWorks),const DeepCollectionEquality().hash(_relatedWorks),const DeepCollectionEquality().hash(_abstractInvertedIndex),const DeepCollectionEquality().hash(_countsByYear),updatedDate,createdDate]);

@override
String toString() {
  return 'WorkDto(id: $id, doi: $doi, title: $title, displayName: $displayName, publicationYear: $publicationYear, publicationDate: $publicationDate, ids: $ids, language: $language, primaryLocation: $primaryLocation, type: $type, typeCrossref: $typeCrossref, indexedIn: $indexedIn, openAccess: $openAccess, authorships: $authorships, countriesDistinctCount: $countriesDistinctCount, institutionsDistinctCount: $institutionsDistinctCount, correspondingAuthorIds: $correspondingAuthorIds, correspondingInstitutionIds: $correspondingInstitutionIds, apcList: $apcList, apcPaid: $apcPaid, fwci: $fwci, hasFulltext: $hasFulltext, fulltextOrigin: $fulltextOrigin, citedByCount: $citedByCount, citationNormalizedPercentile: $citationNormalizedPercentile, citedByPercentileYear: $citedByPercentileYear, biblio: $biblio, isRetracted: $isRetracted, isParatext: $isParatext, primaryTopic: $primaryTopic, topics: $topics, keywords: $keywords, concepts: $concepts, mesh: $mesh, locationsCount: $locationsCount, locations: $locations, bestOaLocation: $bestOaLocation, sustainableDevelopmentGoals: $sustainableDevelopmentGoals, grants: $grants, datasets: $datasets, versions: $versions, referencedWorksCount: $referencedWorksCount, referencedWorks: $referencedWorks, relatedWorks: $relatedWorks, abstractInvertedIndex: $abstractInvertedIndex, countsByYear: $countsByYear, updatedDate: $updatedDate, createdDate: $createdDate)';
}


}

/// @nodoc
abstract mixin class _$WorkDtoCopyWith<$Res> implements $WorkDtoCopyWith<$Res> {
  factory _$WorkDtoCopyWith(_WorkDto value, $Res Function(_WorkDto) _then) = __$WorkDtoCopyWithImpl;
@override @useResult
$Res call({
 String? id,@UriConverter() Uri? doi, String? title, String? displayName, int? publicationYear,@DateTimeConverter() DateTime? publicationDate, WorkIdsDto? ids, String? language, PrimaryLocationDto? primaryLocation, String? type, String? typeCrossref, List<String>? indexedIn, OpenAccessDto? openAccess, List<AuthorshipDto>? authorships, int? countriesDistinctCount, int? institutionsDistinctCount, List<String>? correspondingAuthorIds, List<String>? correspondingInstitutionIds, MoneyDto? apcList, MoneyDto? apcPaid, double? fwci, bool? hasFulltext, String? fulltextOrigin, int? citedByCount, CitationNormalizedPercentileDto? citationNormalizedPercentile, IntRangeDto? citedByPercentileYear, BiblioDto? biblio, bool? isRetracted, bool? isParatext, TopicDto? primaryTopic, List<TopicDto>? topics, List<KeywordDto>? keywords, List<ConceptDto>? concepts, List<dynamic>? mesh, int? locationsCount, List<LocationDto>? locations, LocationDto? bestOaLocation, List<dynamic>? sustainableDevelopmentGoals, List<dynamic>? grants, List<dynamic>? datasets, List<dynamic>? versions, int? referencedWorksCount, List<String>? referencedWorks, List<String>? relatedWorks, Map<String, List<int>>? abstractInvertedIndex, List<CountByYearDto>? countsByYear,@DateTimeConverter() DateTime? updatedDate,@DateTimeConverter() DateTime? createdDate
});


@override $WorkIdsDtoCopyWith<$Res>? get ids;@override $PrimaryLocationDtoCopyWith<$Res>? get primaryLocation;@override $OpenAccessDtoCopyWith<$Res>? get openAccess;@override $MoneyDtoCopyWith<$Res>? get apcList;@override $MoneyDtoCopyWith<$Res>? get apcPaid;@override $CitationNormalizedPercentileDtoCopyWith<$Res>? get citationNormalizedPercentile;@override $IntRangeDtoCopyWith<$Res>? get citedByPercentileYear;@override $BiblioDtoCopyWith<$Res>? get biblio;@override $TopicDtoCopyWith<$Res>? get primaryTopic;@override $LocationDtoCopyWith<$Res>? get bestOaLocation;

}
/// @nodoc
class __$WorkDtoCopyWithImpl<$Res>
    implements _$WorkDtoCopyWith<$Res> {
  __$WorkDtoCopyWithImpl(this._self, this._then);

  final _WorkDto _self;
  final $Res Function(_WorkDto) _then;

/// Create a copy of WorkDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? doi = freezed,Object? title = freezed,Object? displayName = freezed,Object? publicationYear = freezed,Object? publicationDate = freezed,Object? ids = freezed,Object? language = freezed,Object? primaryLocation = freezed,Object? type = freezed,Object? typeCrossref = freezed,Object? indexedIn = freezed,Object? openAccess = freezed,Object? authorships = freezed,Object? countriesDistinctCount = freezed,Object? institutionsDistinctCount = freezed,Object? correspondingAuthorIds = freezed,Object? correspondingInstitutionIds = freezed,Object? apcList = freezed,Object? apcPaid = freezed,Object? fwci = freezed,Object? hasFulltext = freezed,Object? fulltextOrigin = freezed,Object? citedByCount = freezed,Object? citationNormalizedPercentile = freezed,Object? citedByPercentileYear = freezed,Object? biblio = freezed,Object? isRetracted = freezed,Object? isParatext = freezed,Object? primaryTopic = freezed,Object? topics = freezed,Object? keywords = freezed,Object? concepts = freezed,Object? mesh = freezed,Object? locationsCount = freezed,Object? locations = freezed,Object? bestOaLocation = freezed,Object? sustainableDevelopmentGoals = freezed,Object? grants = freezed,Object? datasets = freezed,Object? versions = freezed,Object? referencedWorksCount = freezed,Object? referencedWorks = freezed,Object? relatedWorks = freezed,Object? abstractInvertedIndex = freezed,Object? countsByYear = freezed,Object? updatedDate = freezed,Object? createdDate = freezed,}) {
  return _then(_WorkDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,doi: freezed == doi ? _self.doi : doi // ignore: cast_nullable_to_non_nullable
as Uri?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,publicationYear: freezed == publicationYear ? _self.publicationYear : publicationYear // ignore: cast_nullable_to_non_nullable
as int?,publicationDate: freezed == publicationDate ? _self.publicationDate : publicationDate // ignore: cast_nullable_to_non_nullable
as DateTime?,ids: freezed == ids ? _self.ids : ids // ignore: cast_nullable_to_non_nullable
as WorkIdsDto?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,primaryLocation: freezed == primaryLocation ? _self.primaryLocation : primaryLocation // ignore: cast_nullable_to_non_nullable
as PrimaryLocationDto?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,typeCrossref: freezed == typeCrossref ? _self.typeCrossref : typeCrossref // ignore: cast_nullable_to_non_nullable
as String?,indexedIn: freezed == indexedIn ? _self._indexedIn : indexedIn // ignore: cast_nullable_to_non_nullable
as List<String>?,openAccess: freezed == openAccess ? _self.openAccess : openAccess // ignore: cast_nullable_to_non_nullable
as OpenAccessDto?,authorships: freezed == authorships ? _self._authorships : authorships // ignore: cast_nullable_to_non_nullable
as List<AuthorshipDto>?,countriesDistinctCount: freezed == countriesDistinctCount ? _self.countriesDistinctCount : countriesDistinctCount // ignore: cast_nullable_to_non_nullable
as int?,institutionsDistinctCount: freezed == institutionsDistinctCount ? _self.institutionsDistinctCount : institutionsDistinctCount // ignore: cast_nullable_to_non_nullable
as int?,correspondingAuthorIds: freezed == correspondingAuthorIds ? _self._correspondingAuthorIds : correspondingAuthorIds // ignore: cast_nullable_to_non_nullable
as List<String>?,correspondingInstitutionIds: freezed == correspondingInstitutionIds ? _self._correspondingInstitutionIds : correspondingInstitutionIds // ignore: cast_nullable_to_non_nullable
as List<String>?,apcList: freezed == apcList ? _self.apcList : apcList // ignore: cast_nullable_to_non_nullable
as MoneyDto?,apcPaid: freezed == apcPaid ? _self.apcPaid : apcPaid // ignore: cast_nullable_to_non_nullable
as MoneyDto?,fwci: freezed == fwci ? _self.fwci : fwci // ignore: cast_nullable_to_non_nullable
as double?,hasFulltext: freezed == hasFulltext ? _self.hasFulltext : hasFulltext // ignore: cast_nullable_to_non_nullable
as bool?,fulltextOrigin: freezed == fulltextOrigin ? _self.fulltextOrigin : fulltextOrigin // ignore: cast_nullable_to_non_nullable
as String?,citedByCount: freezed == citedByCount ? _self.citedByCount : citedByCount // ignore: cast_nullable_to_non_nullable
as int?,citationNormalizedPercentile: freezed == citationNormalizedPercentile ? _self.citationNormalizedPercentile : citationNormalizedPercentile // ignore: cast_nullable_to_non_nullable
as CitationNormalizedPercentileDto?,citedByPercentileYear: freezed == citedByPercentileYear ? _self.citedByPercentileYear : citedByPercentileYear // ignore: cast_nullable_to_non_nullable
as IntRangeDto?,biblio: freezed == biblio ? _self.biblio : biblio // ignore: cast_nullable_to_non_nullable
as BiblioDto?,isRetracted: freezed == isRetracted ? _self.isRetracted : isRetracted // ignore: cast_nullable_to_non_nullable
as bool?,isParatext: freezed == isParatext ? _self.isParatext : isParatext // ignore: cast_nullable_to_non_nullable
as bool?,primaryTopic: freezed == primaryTopic ? _self.primaryTopic : primaryTopic // ignore: cast_nullable_to_non_nullable
as TopicDto?,topics: freezed == topics ? _self._topics : topics // ignore: cast_nullable_to_non_nullable
as List<TopicDto>?,keywords: freezed == keywords ? _self._keywords : keywords // ignore: cast_nullable_to_non_nullable
as List<KeywordDto>?,concepts: freezed == concepts ? _self._concepts : concepts // ignore: cast_nullable_to_non_nullable
as List<ConceptDto>?,mesh: freezed == mesh ? _self._mesh : mesh // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,locationsCount: freezed == locationsCount ? _self.locationsCount : locationsCount // ignore: cast_nullable_to_non_nullable
as int?,locations: freezed == locations ? _self._locations : locations // ignore: cast_nullable_to_non_nullable
as List<LocationDto>?,bestOaLocation: freezed == bestOaLocation ? _self.bestOaLocation : bestOaLocation // ignore: cast_nullable_to_non_nullable
as LocationDto?,sustainableDevelopmentGoals: freezed == sustainableDevelopmentGoals ? _self._sustainableDevelopmentGoals : sustainableDevelopmentGoals // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,grants: freezed == grants ? _self._grants : grants // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,datasets: freezed == datasets ? _self._datasets : datasets // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,versions: freezed == versions ? _self._versions : versions // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,referencedWorksCount: freezed == referencedWorksCount ? _self.referencedWorksCount : referencedWorksCount // ignore: cast_nullable_to_non_nullable
as int?,referencedWorks: freezed == referencedWorks ? _self._referencedWorks : referencedWorks // ignore: cast_nullable_to_non_nullable
as List<String>?,relatedWorks: freezed == relatedWorks ? _self._relatedWorks : relatedWorks // ignore: cast_nullable_to_non_nullable
as List<String>?,abstractInvertedIndex: freezed == abstractInvertedIndex ? _self._abstractInvertedIndex : abstractInvertedIndex // ignore: cast_nullable_to_non_nullable
as Map<String, List<int>>?,countsByYear: freezed == countsByYear ? _self._countsByYear : countsByYear // ignore: cast_nullable_to_non_nullable
as List<CountByYearDto>?,updatedDate: freezed == updatedDate ? _self.updatedDate : updatedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,createdDate: freezed == createdDate ? _self.createdDate : createdDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of WorkDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkIdsDtoCopyWith<$Res>? get ids {
    if (_self.ids == null) {
    return null;
  }

  return $WorkIdsDtoCopyWith<$Res>(_self.ids!, (value) {
    return _then(_self.copyWith(ids: value));
  });
}/// Create a copy of WorkDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrimaryLocationDtoCopyWith<$Res>? get primaryLocation {
    if (_self.primaryLocation == null) {
    return null;
  }

  return $PrimaryLocationDtoCopyWith<$Res>(_self.primaryLocation!, (value) {
    return _then(_self.copyWith(primaryLocation: value));
  });
}/// Create a copy of WorkDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OpenAccessDtoCopyWith<$Res>? get openAccess {
    if (_self.openAccess == null) {
    return null;
  }

  return $OpenAccessDtoCopyWith<$Res>(_self.openAccess!, (value) {
    return _then(_self.copyWith(openAccess: value));
  });
}/// Create a copy of WorkDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyDtoCopyWith<$Res>? get apcList {
    if (_self.apcList == null) {
    return null;
  }

  return $MoneyDtoCopyWith<$Res>(_self.apcList!, (value) {
    return _then(_self.copyWith(apcList: value));
  });
}/// Create a copy of WorkDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyDtoCopyWith<$Res>? get apcPaid {
    if (_self.apcPaid == null) {
    return null;
  }

  return $MoneyDtoCopyWith<$Res>(_self.apcPaid!, (value) {
    return _then(_self.copyWith(apcPaid: value));
  });
}/// Create a copy of WorkDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CitationNormalizedPercentileDtoCopyWith<$Res>? get citationNormalizedPercentile {
    if (_self.citationNormalizedPercentile == null) {
    return null;
  }

  return $CitationNormalizedPercentileDtoCopyWith<$Res>(_self.citationNormalizedPercentile!, (value) {
    return _then(_self.copyWith(citationNormalizedPercentile: value));
  });
}/// Create a copy of WorkDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IntRangeDtoCopyWith<$Res>? get citedByPercentileYear {
    if (_self.citedByPercentileYear == null) {
    return null;
  }

  return $IntRangeDtoCopyWith<$Res>(_self.citedByPercentileYear!, (value) {
    return _then(_self.copyWith(citedByPercentileYear: value));
  });
}/// Create a copy of WorkDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BiblioDtoCopyWith<$Res>? get biblio {
    if (_self.biblio == null) {
    return null;
  }

  return $BiblioDtoCopyWith<$Res>(_self.biblio!, (value) {
    return _then(_self.copyWith(biblio: value));
  });
}/// Create a copy of WorkDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TopicDtoCopyWith<$Res>? get primaryTopic {
    if (_self.primaryTopic == null) {
    return null;
  }

  return $TopicDtoCopyWith<$Res>(_self.primaryTopic!, (value) {
    return _then(_self.copyWith(primaryTopic: value));
  });
}/// Create a copy of WorkDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationDtoCopyWith<$Res>? get bestOaLocation {
    if (_self.bestOaLocation == null) {
    return null;
  }

  return $LocationDtoCopyWith<$Res>(_self.bestOaLocation!, (value) {
    return _then(_self.copyWith(bestOaLocation: value));
  });
}
}

// dart format on
