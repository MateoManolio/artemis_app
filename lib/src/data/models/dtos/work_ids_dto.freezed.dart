// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_ids_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkIdsDto {

 String? get openalex;@UriConverter() Uri? get doi; String? get mag;@UriConverter() Uri? get pmid;@UriConverter() Uri? get pmcid;
/// Create a copy of WorkIdsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkIdsDtoCopyWith<WorkIdsDto> get copyWith => _$WorkIdsDtoCopyWithImpl<WorkIdsDto>(this as WorkIdsDto, _$identity);

  /// Serializes this WorkIdsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkIdsDto&&(identical(other.openalex, openalex) || other.openalex == openalex)&&(identical(other.doi, doi) || other.doi == doi)&&(identical(other.mag, mag) || other.mag == mag)&&(identical(other.pmid, pmid) || other.pmid == pmid)&&(identical(other.pmcid, pmcid) || other.pmcid == pmcid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,openalex,doi,mag,pmid,pmcid);

@override
String toString() {
  return 'WorkIdsDto(openalex: $openalex, doi: $doi, mag: $mag, pmid: $pmid, pmcid: $pmcid)';
}


}

/// @nodoc
abstract mixin class $WorkIdsDtoCopyWith<$Res>  {
  factory $WorkIdsDtoCopyWith(WorkIdsDto value, $Res Function(WorkIdsDto) _then) = _$WorkIdsDtoCopyWithImpl;
@useResult
$Res call({
 String? openalex,@UriConverter() Uri? doi, String? mag,@UriConverter() Uri? pmid,@UriConverter() Uri? pmcid
});




}
/// @nodoc
class _$WorkIdsDtoCopyWithImpl<$Res>
    implements $WorkIdsDtoCopyWith<$Res> {
  _$WorkIdsDtoCopyWithImpl(this._self, this._then);

  final WorkIdsDto _self;
  final $Res Function(WorkIdsDto) _then;

/// Create a copy of WorkIdsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? openalex = freezed,Object? doi = freezed,Object? mag = freezed,Object? pmid = freezed,Object? pmcid = freezed,}) {
  return _then(_self.copyWith(
openalex: freezed == openalex ? _self.openalex : openalex // ignore: cast_nullable_to_non_nullable
as String?,doi: freezed == doi ? _self.doi : doi // ignore: cast_nullable_to_non_nullable
as Uri?,mag: freezed == mag ? _self.mag : mag // ignore: cast_nullable_to_non_nullable
as String?,pmid: freezed == pmid ? _self.pmid : pmid // ignore: cast_nullable_to_non_nullable
as Uri?,pmcid: freezed == pmcid ? _self.pmcid : pmcid // ignore: cast_nullable_to_non_nullable
as Uri?,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkIdsDto].
extension WorkIdsDtoPatterns on WorkIdsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkIdsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkIdsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkIdsDto value)  $default,){
final _that = this;
switch (_that) {
case _WorkIdsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkIdsDto value)?  $default,){
final _that = this;
switch (_that) {
case _WorkIdsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? openalex, @UriConverter()  Uri? doi,  String? mag, @UriConverter()  Uri? pmid, @UriConverter()  Uri? pmcid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkIdsDto() when $default != null:
return $default(_that.openalex,_that.doi,_that.mag,_that.pmid,_that.pmcid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? openalex, @UriConverter()  Uri? doi,  String? mag, @UriConverter()  Uri? pmid, @UriConverter()  Uri? pmcid)  $default,) {final _that = this;
switch (_that) {
case _WorkIdsDto():
return $default(_that.openalex,_that.doi,_that.mag,_that.pmid,_that.pmcid);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? openalex, @UriConverter()  Uri? doi,  String? mag, @UriConverter()  Uri? pmid, @UriConverter()  Uri? pmcid)?  $default,) {final _that = this;
switch (_that) {
case _WorkIdsDto() when $default != null:
return $default(_that.openalex,_that.doi,_that.mag,_that.pmid,_that.pmcid);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _WorkIdsDto implements WorkIdsDto {
  const _WorkIdsDto({this.openalex, @UriConverter() this.doi, this.mag, @UriConverter() this.pmid, @UriConverter() this.pmcid});
  factory _WorkIdsDto.fromJson(Map<String, dynamic> json) => _$WorkIdsDtoFromJson(json);

@override final  String? openalex;
@override@UriConverter() final  Uri? doi;
@override final  String? mag;
@override@UriConverter() final  Uri? pmid;
@override@UriConverter() final  Uri? pmcid;

/// Create a copy of WorkIdsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkIdsDtoCopyWith<_WorkIdsDto> get copyWith => __$WorkIdsDtoCopyWithImpl<_WorkIdsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkIdsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkIdsDto&&(identical(other.openalex, openalex) || other.openalex == openalex)&&(identical(other.doi, doi) || other.doi == doi)&&(identical(other.mag, mag) || other.mag == mag)&&(identical(other.pmid, pmid) || other.pmid == pmid)&&(identical(other.pmcid, pmcid) || other.pmcid == pmcid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,openalex,doi,mag,pmid,pmcid);

@override
String toString() {
  return 'WorkIdsDto(openalex: $openalex, doi: $doi, mag: $mag, pmid: $pmid, pmcid: $pmcid)';
}


}

/// @nodoc
abstract mixin class _$WorkIdsDtoCopyWith<$Res> implements $WorkIdsDtoCopyWith<$Res> {
  factory _$WorkIdsDtoCopyWith(_WorkIdsDto value, $Res Function(_WorkIdsDto) _then) = __$WorkIdsDtoCopyWithImpl;
@override @useResult
$Res call({
 String? openalex,@UriConverter() Uri? doi, String? mag,@UriConverter() Uri? pmid,@UriConverter() Uri? pmcid
});




}
/// @nodoc
class __$WorkIdsDtoCopyWithImpl<$Res>
    implements _$WorkIdsDtoCopyWith<$Res> {
  __$WorkIdsDtoCopyWithImpl(this._self, this._then);

  final _WorkIdsDto _self;
  final $Res Function(_WorkIdsDto) _then;

/// Create a copy of WorkIdsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? openalex = freezed,Object? doi = freezed,Object? mag = freezed,Object? pmid = freezed,Object? pmcid = freezed,}) {
  return _then(_WorkIdsDto(
openalex: freezed == openalex ? _self.openalex : openalex // ignore: cast_nullable_to_non_nullable
as String?,doi: freezed == doi ? _self.doi : doi // ignore: cast_nullable_to_non_nullable
as Uri?,mag: freezed == mag ? _self.mag : mag // ignore: cast_nullable_to_non_nullable
as String?,pmid: freezed == pmid ? _self.pmid : pmid // ignore: cast_nullable_to_non_nullable
as Uri?,pmcid: freezed == pmcid ? _self.pmcid : pmcid // ignore: cast_nullable_to_non_nullable
as Uri?,
  ));
}


}

// dart format on
