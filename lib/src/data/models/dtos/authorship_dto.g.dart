// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorship_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthorshipDto _$AuthorshipDtoFromJson(Map<String, dynamic> json) =>
    _AuthorshipDto(
      authorPosition: json['authorPosition'] as String?,
      author: json['author'] == null
          ? null
          : AuthorDto.fromJson(json['author'] as Map<String, dynamic>),
      institutions: (json['institutions'] as List<dynamic>?)
          ?.map((e) => InstitutionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      countries: (json['countries'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isCorresponding: json['isCorresponding'] as bool?,
      rawAuthorName: json['rawAuthorName'] as String?,
      rawAffiliationStrings: (json['rawAffiliationStrings'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      affiliations: (json['affiliations'] as List<dynamic>?)
          ?.map((e) => AffiliationDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AuthorshipDtoToJson(_AuthorshipDto instance) =>
    <String, dynamic>{
      'authorPosition': instance.authorPosition,
      'author': instance.author,
      'institutions': instance.institutions,
      'countries': instance.countries,
      'isCorresponding': instance.isCorresponding,
      'rawAuthorName': instance.rawAuthorName,
      'rawAffiliationStrings': instance.rawAffiliationStrings,
      'affiliations': instance.affiliations,
    };
