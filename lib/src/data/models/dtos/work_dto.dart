// ignore_for_file: invalid_annotation_target

import 'package:artemis_app/src/core/converters/uri_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:artemis_app/src/core/converters/datetime_converter.dart';
import 'package:artemis_app/src/core/converters/abstract_inverted_index_converter.dart';
import 'package:artemis_app/src/data/models/dtos/work_ids_dto.dart';
import 'package:artemis_app/src/data/models/dtos/primary_location_dto.dart';
import 'package:artemis_app/src/data/models/dtos/open_access_dto.dart';
import 'package:artemis_app/src/data/models/dtos/authorship_dto.dart';
import 'package:artemis_app/src/data/models/dtos/biblio_dto.dart';
import 'package:artemis_app/src/data/models/dtos/money_dto.dart';
import 'package:artemis_app/src/data/models/dtos/citation_metrics_dto.dart';
import 'package:artemis_app/src/data/models/dtos/topic_dto.dart';
import 'package:artemis_app/src/data/models/dtos/keyword_dto.dart';
import 'package:artemis_app/src/data/models/dtos/concept_dto.dart';
import 'package:artemis_app/src/data/models/dtos/location_dto.dart';
import 'package:artemis_app/src/data/models/dtos/count_by_year_dto.dart';

part 'work_dto.freezed.dart';
part 'work_dto.g.dart';

/// https://docs.openalex.org/api-entities/works/work-object
@freezed
sealed class WorkDto with _$WorkDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory WorkDto({
    String? id,
    @UriConverter() Uri? doi,
    String? title,
    String? displayName,
    int? publicationYear,
    @DateTimeConverter() DateTime? publicationDate,
    WorkIdsDto? ids,
    String? language,
    PrimaryLocationDto? primaryLocation,
    String? type,
    String? typeCrossref,
    List<String>? indexedIn,
    OpenAccessDto? openAccess,
    List<AuthorshipDto>? authorships,
    int? countriesDistinctCount,
    int? institutionsDistinctCount,
    List<String>? correspondingAuthorIds,
    List<String>? correspondingInstitutionIds,
    MoneyDto? apcList,
    MoneyDto? apcPaid,
    double? fwci,
    bool? hasFulltext,
    String? fulltextOrigin,
    int? citedByCount,
    CitationNormalizedPercentileDto? citationNormalizedPercentile,
    IntRangeDto? citedByPercentileYear,
    BiblioDto? biblio,
    bool? isRetracted,
    bool? isParatext,
    TopicDto? primaryTopic,
    List<TopicDto>? topics,
    List<KeywordDto>? keywords,
    List<ConceptDto>? concepts,
    List<dynamic>? mesh,
    int? locationsCount,
    List<LocationDto>? locations,
    LocationDto? bestOaLocation,
    List<dynamic>? sustainableDevelopmentGoals,
    List<dynamic>? grants,
    List<dynamic>? datasets,
    List<dynamic>? versions,
    int? referencedWorksCount,
    List<String>? referencedWorks,
    List<String>? relatedWorks,

    /// OpenAlex entrega el abstract como inverted index (no texto plano).
    /// Lo modelamos como Map\<String, List\<int\>\> y lo reconstruimos fuera.
    @AbstractInvertedIndexConverter()
    Map<String, List<int>>? abstractInvertedIndex,
    List<CountByYearDto>? countsByYear,
    @DateTimeConverter() DateTime? updatedDate,
    @DateTimeConverter() DateTime? createdDate,
  }) = _WorkDto;

  factory WorkDto.fromJson(Map<String, dynamic> json) =>
      _$WorkDtoFromJson(json);
}
