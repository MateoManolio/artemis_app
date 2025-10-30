// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorship_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthorshipDto _$AuthorshipDtoFromJson(Map<String, dynamic> json) =>
    _AuthorshipDto(
      authorPosition: json['author_position'] as String?,
      author: json['author'] == null
          ? null
          : AuthorDto.fromJson(json['author'] as Map<String, dynamic>),
      institutions: (json['institutions'] as List<dynamic>?)
          ?.map((e) => InstitutionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      countries: (json['countries'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isCorresponding: json['is_corresponding'] as bool?,
      rawAuthorName: json['raw_author_name'] as String?,
      rawAffiliationStrings: (json['raw_affiliation_strings'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      affiliations: (json['affiliations'] as List<dynamic>?)
          ?.map((e) => AffiliationDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AuthorshipDtoToJson(_AuthorshipDto instance) =>
    <String, dynamic>{
      'author_position': instance.authorPosition,
      'author': instance.author?.toJson(),
      'institutions': instance.institutions?.map((e) => e.toJson()).toList(),
      'countries': instance.countries,
      'is_corresponding': instance.isCorresponding,
      'raw_author_name': instance.rawAuthorName,
      'raw_affiliation_strings': instance.rawAffiliationStrings,
      'affiliations': instance.affiliations?.map((e) => e.toJson()).toList(),
    };
