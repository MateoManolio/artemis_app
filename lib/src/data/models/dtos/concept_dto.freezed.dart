// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'concept_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConceptDto {

 String? get id; String? get wikidata; String? get displayName; int? get level; double? get score;
/// Create a copy of ConceptDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConceptDtoCopyWith<ConceptDto> get copyWith => _$ConceptDtoCopyWithImpl<ConceptDto>(this as ConceptDto, _$identity);

  /// Serializes this ConceptDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConceptDto&&(identical(other.id, id) || other.id == id)&&(identical(other.wikidata, wikidata) || other.wikidata == wikidata)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.level, level) || other.level == level)&&(identical(other.score, score) || other.score == score));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,wikidata,displayName,level,score);

@override
String toString() {
  return 'ConceptDto(id: $id, wikidata: $wikidata, displayName: $displayName, level: $level, score: $score)';
}


}

/// @nodoc
abstract mixin class $ConceptDtoCopyWith<$Res>  {
  factory $ConceptDtoCopyWith(ConceptDto value, $Res Function(ConceptDto) _then) = _$ConceptDtoCopyWithImpl;
@useResult
$Res call({
 String? id, String? wikidata, String? displayName, int? level, double? score
});




}
/// @nodoc
class _$ConceptDtoCopyWithImpl<$Res>
    implements $ConceptDtoCopyWith<$Res> {
  _$ConceptDtoCopyWithImpl(this._self, this._then);

  final ConceptDto _self;
  final $Res Function(ConceptDto) _then;

/// Create a copy of ConceptDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? wikidata = freezed,Object? displayName = freezed,Object? level = freezed,Object? score = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,wikidata: freezed == wikidata ? _self.wikidata : wikidata // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [ConceptDto].
extension ConceptDtoPatterns on ConceptDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConceptDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConceptDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConceptDto value)  $default,){
final _that = this;
switch (_that) {
case _ConceptDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConceptDto value)?  $default,){
final _that = this;
switch (_that) {
case _ConceptDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? wikidata,  String? displayName,  int? level,  double? score)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConceptDto() when $default != null:
return $default(_that.id,_that.wikidata,_that.displayName,_that.level,_that.score);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? wikidata,  String? displayName,  int? level,  double? score)  $default,) {final _that = this;
switch (_that) {
case _ConceptDto():
return $default(_that.id,_that.wikidata,_that.displayName,_that.level,_that.score);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? wikidata,  String? displayName,  int? level,  double? score)?  $default,) {final _that = this;
switch (_that) {
case _ConceptDto() when $default != null:
return $default(_that.id,_that.wikidata,_that.displayName,_that.level,_that.score);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _ConceptDto implements ConceptDto {
  const _ConceptDto({this.id, this.wikidata, this.displayName, this.level, this.score});
  factory _ConceptDto.fromJson(Map<String, dynamic> json) => _$ConceptDtoFromJson(json);

@override final  String? id;
@override final  String? wikidata;
@override final  String? displayName;
@override final  int? level;
@override final  double? score;

/// Create a copy of ConceptDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConceptDtoCopyWith<_ConceptDto> get copyWith => __$ConceptDtoCopyWithImpl<_ConceptDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConceptDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConceptDto&&(identical(other.id, id) || other.id == id)&&(identical(other.wikidata, wikidata) || other.wikidata == wikidata)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.level, level) || other.level == level)&&(identical(other.score, score) || other.score == score));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,wikidata,displayName,level,score);

@override
String toString() {
  return 'ConceptDto(id: $id, wikidata: $wikidata, displayName: $displayName, level: $level, score: $score)';
}


}

/// @nodoc
abstract mixin class _$ConceptDtoCopyWith<$Res> implements $ConceptDtoCopyWith<$Res> {
  factory _$ConceptDtoCopyWith(_ConceptDto value, $Res Function(_ConceptDto) _then) = __$ConceptDtoCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? wikidata, String? displayName, int? level, double? score
});




}
/// @nodoc
class __$ConceptDtoCopyWithImpl<$Res>
    implements _$ConceptDtoCopyWith<$Res> {
  __$ConceptDtoCopyWithImpl(this._self, this._then);

  final _ConceptDto _self;
  final $Res Function(_ConceptDto) _then;

/// Create a copy of ConceptDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? wikidata = freezed,Object? displayName = freezed,Object? level = freezed,Object? score = freezed,}) {
  return _then(_ConceptDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,wikidata: freezed == wikidata ? _self.wikidata : wikidata // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
