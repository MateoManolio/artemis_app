// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'money_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MoneyDto _$MoneyDtoFromJson(Map<String, dynamic> json) => _MoneyDto(
  value: (json['value'] as num?)?.toDouble(),
  currency: json['currency'] as String?,
  valueUsd: (json['valueUsd'] as num?)?.toDouble(),
);

Map<String, dynamic> _$MoneyDtoToJson(_MoneyDto instance) => <String, dynamic>{
  'value': instance.value,
  'currency': instance.currency,
  'valueUsd': instance.valueUsd,
};
