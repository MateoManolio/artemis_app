// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'count_by_year_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CountByYearDto {

 int? get year; int? get citedByCount;
/// Create a copy of CountByYearDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountByYearDtoCopyWith<CountByYearDto> get copyWith => _$CountByYearDtoCopyWithImpl<CountByYearDto>(this as CountByYearDto, _$identity);

  /// Serializes this CountByYearDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountByYearDto&&(identical(other.year, year) || other.year == year)&&(identical(other.citedByCount, citedByCount) || other.citedByCount == citedByCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,year,citedByCount);

@override
String toString() {
  return 'CountByYearDto(year: $year, citedByCount: $citedByCount)';
}


}

/// @nodoc
abstract mixin class $CountByYearDtoCopyWith<$Res>  {
  factory $CountByYearDtoCopyWith(CountByYearDto value, $Res Function(CountByYearDto) _then) = _$CountByYearDtoCopyWithImpl;
@useResult
$Res call({
 int? year, int? citedByCount
});




}
/// @nodoc
class _$CountByYearDtoCopyWithImpl<$Res>
    implements $CountByYearDtoCopyWith<$Res> {
  _$CountByYearDtoCopyWithImpl(this._self, this._then);

  final CountByYearDto _self;
  final $Res Function(CountByYearDto) _then;

/// Create a copy of CountByYearDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? year = freezed,Object? citedByCount = freezed,}) {
  return _then(_self.copyWith(
year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int?,citedByCount: freezed == citedByCount ? _self.citedByCount : citedByCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CountByYearDto].
extension CountByYearDtoPatterns on CountByYearDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CountByYearDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CountByYearDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CountByYearDto value)  $default,){
final _that = this;
switch (_that) {
case _CountByYearDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CountByYearDto value)?  $default,){
final _that = this;
switch (_that) {
case _CountByYearDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? year,  int? citedByCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CountByYearDto() when $default != null:
return $default(_that.year,_that.citedByCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? year,  int? citedByCount)  $default,) {final _that = this;
switch (_that) {
case _CountByYearDto():
return $default(_that.year,_that.citedByCount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? year,  int? citedByCount)?  $default,) {final _that = this;
switch (_that) {
case _CountByYearDto() when $default != null:
return $default(_that.year,_that.citedByCount);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _CountByYearDto implements CountByYearDto {
   _CountByYearDto({this.year, this.citedByCount});
  factory _CountByYearDto.fromJson(Map<String, dynamic> json) => _$CountByYearDtoFromJson(json);

@override final  int? year;
@override final  int? citedByCount;

/// Create a copy of CountByYearDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountByYearDtoCopyWith<_CountByYearDto> get copyWith => __$CountByYearDtoCopyWithImpl<_CountByYearDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CountByYearDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountByYearDto&&(identical(other.year, year) || other.year == year)&&(identical(other.citedByCount, citedByCount) || other.citedByCount == citedByCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,year,citedByCount);

@override
String toString() {
  return 'CountByYearDto(year: $year, citedByCount: $citedByCount)';
}


}

/// @nodoc
abstract mixin class _$CountByYearDtoCopyWith<$Res> implements $CountByYearDtoCopyWith<$Res> {
  factory _$CountByYearDtoCopyWith(_CountByYearDto value, $Res Function(_CountByYearDto) _then) = __$CountByYearDtoCopyWithImpl;
@override @useResult
$Res call({
 int? year, int? citedByCount
});




}
/// @nodoc
class __$CountByYearDtoCopyWithImpl<$Res>
    implements _$CountByYearDtoCopyWith<$Res> {
  __$CountByYearDtoCopyWithImpl(this._self, this._then);

  final _CountByYearDto _self;
  final $Res Function(_CountByYearDto) _then;

/// Create a copy of CountByYearDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? year = freezed,Object? citedByCount = freezed,}) {
  return _then(_CountByYearDto(
year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int?,citedByCount: freezed == citedByCount ? _self.citedByCount : citedByCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
