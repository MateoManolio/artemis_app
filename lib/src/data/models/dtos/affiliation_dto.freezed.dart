// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'affiliation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AffiliationDto {

 String? get rawAffiliationString; List<String>? get institutionIds;
/// Create a copy of AffiliationDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AffiliationDtoCopyWith<AffiliationDto> get copyWith => _$AffiliationDtoCopyWithImpl<AffiliationDto>(this as AffiliationDto, _$identity);

  /// Serializes this AffiliationDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AffiliationDto&&(identical(other.rawAffiliationString, rawAffiliationString) || other.rawAffiliationString == rawAffiliationString)&&const DeepCollectionEquality().equals(other.institutionIds, institutionIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rawAffiliationString,const DeepCollectionEquality().hash(institutionIds));

@override
String toString() {
  return 'AffiliationDto(rawAffiliationString: $rawAffiliationString, institutionIds: $institutionIds)';
}


}

/// @nodoc
abstract mixin class $AffiliationDtoCopyWith<$Res>  {
  factory $AffiliationDtoCopyWith(AffiliationDto value, $Res Function(AffiliationDto) _then) = _$AffiliationDtoCopyWithImpl;
@useResult
$Res call({
 String? rawAffiliationString, List<String>? institutionIds
});




}
/// @nodoc
class _$AffiliationDtoCopyWithImpl<$Res>
    implements $AffiliationDtoCopyWith<$Res> {
  _$AffiliationDtoCopyWithImpl(this._self, this._then);

  final AffiliationDto _self;
  final $Res Function(AffiliationDto) _then;

/// Create a copy of AffiliationDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rawAffiliationString = freezed,Object? institutionIds = freezed,}) {
  return _then(_self.copyWith(
rawAffiliationString: freezed == rawAffiliationString ? _self.rawAffiliationString : rawAffiliationString // ignore: cast_nullable_to_non_nullable
as String?,institutionIds: freezed == institutionIds ? _self.institutionIds : institutionIds // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AffiliationDto].
extension AffiliationDtoPatterns on AffiliationDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AffiliationDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AffiliationDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AffiliationDto value)  $default,){
final _that = this;
switch (_that) {
case _AffiliationDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AffiliationDto value)?  $default,){
final _that = this;
switch (_that) {
case _AffiliationDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? rawAffiliationString,  List<String>? institutionIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AffiliationDto() when $default != null:
return $default(_that.rawAffiliationString,_that.institutionIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? rawAffiliationString,  List<String>? institutionIds)  $default,) {final _that = this;
switch (_that) {
case _AffiliationDto():
return $default(_that.rawAffiliationString,_that.institutionIds);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? rawAffiliationString,  List<String>? institutionIds)?  $default,) {final _that = this;
switch (_that) {
case _AffiliationDto() when $default != null:
return $default(_that.rawAffiliationString,_that.institutionIds);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _AffiliationDto implements AffiliationDto {
   _AffiliationDto({this.rawAffiliationString, final  List<String>? institutionIds}): _institutionIds = institutionIds;
  factory _AffiliationDto.fromJson(Map<String, dynamic> json) => _$AffiliationDtoFromJson(json);

@override final  String? rawAffiliationString;
 final  List<String>? _institutionIds;
@override List<String>? get institutionIds {
  final value = _institutionIds;
  if (value == null) return null;
  if (_institutionIds is EqualUnmodifiableListView) return _institutionIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AffiliationDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AffiliationDtoCopyWith<_AffiliationDto> get copyWith => __$AffiliationDtoCopyWithImpl<_AffiliationDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AffiliationDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AffiliationDto&&(identical(other.rawAffiliationString, rawAffiliationString) || other.rawAffiliationString == rawAffiliationString)&&const DeepCollectionEquality().equals(other._institutionIds, _institutionIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rawAffiliationString,const DeepCollectionEquality().hash(_institutionIds));

@override
String toString() {
  return 'AffiliationDto(rawAffiliationString: $rawAffiliationString, institutionIds: $institutionIds)';
}


}

/// @nodoc
abstract mixin class _$AffiliationDtoCopyWith<$Res> implements $AffiliationDtoCopyWith<$Res> {
  factory _$AffiliationDtoCopyWith(_AffiliationDto value, $Res Function(_AffiliationDto) _then) = __$AffiliationDtoCopyWithImpl;
@override @useResult
$Res call({
 String? rawAffiliationString, List<String>? institutionIds
});




}
/// @nodoc
class __$AffiliationDtoCopyWithImpl<$Res>
    implements _$AffiliationDtoCopyWith<$Res> {
  __$AffiliationDtoCopyWithImpl(this._self, this._then);

  final _AffiliationDto _self;
  final $Res Function(_AffiliationDto) _then;

/// Create a copy of AffiliationDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rawAffiliationString = freezed,Object? institutionIds = freezed,}) {
  return _then(_AffiliationDto(
rawAffiliationString: freezed == rawAffiliationString ? _self.rawAffiliationString : rawAffiliationString // ignore: cast_nullable_to_non_nullable
as String?,institutionIds: freezed == institutionIds ? _self._institutionIds : institutionIds // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
