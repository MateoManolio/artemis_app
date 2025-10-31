// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'institution_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InstitutionDto {

 String? get id; String? get displayName; String? get ror; String? get countryCode; String? get type; List<String>? get lineage;
/// Create a copy of InstitutionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InstitutionDtoCopyWith<InstitutionDto> get copyWith => _$InstitutionDtoCopyWithImpl<InstitutionDto>(this as InstitutionDto, _$identity);

  /// Serializes this InstitutionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InstitutionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.ror, ror) || other.ror == ror)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.lineage, lineage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,displayName,ror,countryCode,type,const DeepCollectionEquality().hash(lineage));

@override
String toString() {
  return 'InstitutionDto(id: $id, displayName: $displayName, ror: $ror, countryCode: $countryCode, type: $type, lineage: $lineage)';
}


}

/// @nodoc
abstract mixin class $InstitutionDtoCopyWith<$Res>  {
  factory $InstitutionDtoCopyWith(InstitutionDto value, $Res Function(InstitutionDto) _then) = _$InstitutionDtoCopyWithImpl;
@useResult
$Res call({
 String? id, String? displayName, String? ror, String? countryCode, String? type, List<String>? lineage
});




}
/// @nodoc
class _$InstitutionDtoCopyWithImpl<$Res>
    implements $InstitutionDtoCopyWith<$Res> {
  _$InstitutionDtoCopyWithImpl(this._self, this._then);

  final InstitutionDto _self;
  final $Res Function(InstitutionDto) _then;

/// Create a copy of InstitutionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? displayName = freezed,Object? ror = freezed,Object? countryCode = freezed,Object? type = freezed,Object? lineage = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,ror: freezed == ror ? _self.ror : ror // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,lineage: freezed == lineage ? _self.lineage : lineage // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [InstitutionDto].
extension InstitutionDtoPatterns on InstitutionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InstitutionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InstitutionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InstitutionDto value)  $default,){
final _that = this;
switch (_that) {
case _InstitutionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InstitutionDto value)?  $default,){
final _that = this;
switch (_that) {
case _InstitutionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? displayName,  String? ror,  String? countryCode,  String? type,  List<String>? lineage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InstitutionDto() when $default != null:
return $default(_that.id,_that.displayName,_that.ror,_that.countryCode,_that.type,_that.lineage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? displayName,  String? ror,  String? countryCode,  String? type,  List<String>? lineage)  $default,) {final _that = this;
switch (_that) {
case _InstitutionDto():
return $default(_that.id,_that.displayName,_that.ror,_that.countryCode,_that.type,_that.lineage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? displayName,  String? ror,  String? countryCode,  String? type,  List<String>? lineage)?  $default,) {final _that = this;
switch (_that) {
case _InstitutionDto() when $default != null:
return $default(_that.id,_that.displayName,_that.ror,_that.countryCode,_that.type,_that.lineage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InstitutionDto implements InstitutionDto {
  const _InstitutionDto({this.id, this.displayName, this.ror, this.countryCode, this.type, final  List<String>? lineage}): _lineage = lineage;
  factory _InstitutionDto.fromJson(Map<String, dynamic> json) => _$InstitutionDtoFromJson(json);

@override final  String? id;
@override final  String? displayName;
@override final  String? ror;
@override final  String? countryCode;
@override final  String? type;
 final  List<String>? _lineage;
@override List<String>? get lineage {
  final value = _lineage;
  if (value == null) return null;
  if (_lineage is EqualUnmodifiableListView) return _lineage;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of InstitutionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InstitutionDtoCopyWith<_InstitutionDto> get copyWith => __$InstitutionDtoCopyWithImpl<_InstitutionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InstitutionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InstitutionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.ror, ror) || other.ror == ror)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._lineage, _lineage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,displayName,ror,countryCode,type,const DeepCollectionEquality().hash(_lineage));

@override
String toString() {
  return 'InstitutionDto(id: $id, displayName: $displayName, ror: $ror, countryCode: $countryCode, type: $type, lineage: $lineage)';
}


}

/// @nodoc
abstract mixin class _$InstitutionDtoCopyWith<$Res> implements $InstitutionDtoCopyWith<$Res> {
  factory _$InstitutionDtoCopyWith(_InstitutionDto value, $Res Function(_InstitutionDto) _then) = __$InstitutionDtoCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? displayName, String? ror, String? countryCode, String? type, List<String>? lineage
});




}
/// @nodoc
class __$InstitutionDtoCopyWithImpl<$Res>
    implements _$InstitutionDtoCopyWith<$Res> {
  __$InstitutionDtoCopyWithImpl(this._self, this._then);

  final _InstitutionDto _self;
  final $Res Function(_InstitutionDto) _then;

/// Create a copy of InstitutionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? displayName = freezed,Object? ror = freezed,Object? countryCode = freezed,Object? type = freezed,Object? lineage = freezed,}) {
  return _then(_InstitutionDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,ror: freezed == ror ? _self.ror : ror // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,lineage: freezed == lineage ? _self._lineage : lineage // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
