// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'source_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SourceDto {

 String? get id; String? get displayName; String? get issnL; List<String>? get issn; bool? get isOa; bool? get isInDoaj; bool? get isIndexedInScopus; bool? get isCore; String? get hostOrganization; String? get hostOrganizationName; List<String>? get hostOrganizationLineage; List<String>? get hostOrganizationLineageNames; String? get type;
/// Create a copy of SourceDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SourceDtoCopyWith<SourceDto> get copyWith => _$SourceDtoCopyWithImpl<SourceDto>(this as SourceDto, _$identity);

  /// Serializes this SourceDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SourceDto&&(identical(other.id, id) || other.id == id)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.issnL, issnL) || other.issnL == issnL)&&const DeepCollectionEquality().equals(other.issn, issn)&&(identical(other.isOa, isOa) || other.isOa == isOa)&&(identical(other.isInDoaj, isInDoaj) || other.isInDoaj == isInDoaj)&&(identical(other.isIndexedInScopus, isIndexedInScopus) || other.isIndexedInScopus == isIndexedInScopus)&&(identical(other.isCore, isCore) || other.isCore == isCore)&&(identical(other.hostOrganization, hostOrganization) || other.hostOrganization == hostOrganization)&&(identical(other.hostOrganizationName, hostOrganizationName) || other.hostOrganizationName == hostOrganizationName)&&const DeepCollectionEquality().equals(other.hostOrganizationLineage, hostOrganizationLineage)&&const DeepCollectionEquality().equals(other.hostOrganizationLineageNames, hostOrganizationLineageNames)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,displayName,issnL,const DeepCollectionEquality().hash(issn),isOa,isInDoaj,isIndexedInScopus,isCore,hostOrganization,hostOrganizationName,const DeepCollectionEquality().hash(hostOrganizationLineage),const DeepCollectionEquality().hash(hostOrganizationLineageNames),type);

@override
String toString() {
  return 'SourceDto(id: $id, displayName: $displayName, issnL: $issnL, issn: $issn, isOa: $isOa, isInDoaj: $isInDoaj, isIndexedInScopus: $isIndexedInScopus, isCore: $isCore, hostOrganization: $hostOrganization, hostOrganizationName: $hostOrganizationName, hostOrganizationLineage: $hostOrganizationLineage, hostOrganizationLineageNames: $hostOrganizationLineageNames, type: $type)';
}


}

/// @nodoc
abstract mixin class $SourceDtoCopyWith<$Res>  {
  factory $SourceDtoCopyWith(SourceDto value, $Res Function(SourceDto) _then) = _$SourceDtoCopyWithImpl;
@useResult
$Res call({
 String? id, String? displayName, String? issnL, List<String>? issn, bool? isOa, bool? isInDoaj, bool? isIndexedInScopus, bool? isCore, String? hostOrganization, String? hostOrganizationName, List<String>? hostOrganizationLineage, List<String>? hostOrganizationLineageNames, String? type
});




}
/// @nodoc
class _$SourceDtoCopyWithImpl<$Res>
    implements $SourceDtoCopyWith<$Res> {
  _$SourceDtoCopyWithImpl(this._self, this._then);

  final SourceDto _self;
  final $Res Function(SourceDto) _then;

/// Create a copy of SourceDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? displayName = freezed,Object? issnL = freezed,Object? issn = freezed,Object? isOa = freezed,Object? isInDoaj = freezed,Object? isIndexedInScopus = freezed,Object? isCore = freezed,Object? hostOrganization = freezed,Object? hostOrganizationName = freezed,Object? hostOrganizationLineage = freezed,Object? hostOrganizationLineageNames = freezed,Object? type = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,issnL: freezed == issnL ? _self.issnL : issnL // ignore: cast_nullable_to_non_nullable
as String?,issn: freezed == issn ? _self.issn : issn // ignore: cast_nullable_to_non_nullable
as List<String>?,isOa: freezed == isOa ? _self.isOa : isOa // ignore: cast_nullable_to_non_nullable
as bool?,isInDoaj: freezed == isInDoaj ? _self.isInDoaj : isInDoaj // ignore: cast_nullable_to_non_nullable
as bool?,isIndexedInScopus: freezed == isIndexedInScopus ? _self.isIndexedInScopus : isIndexedInScopus // ignore: cast_nullable_to_non_nullable
as bool?,isCore: freezed == isCore ? _self.isCore : isCore // ignore: cast_nullable_to_non_nullable
as bool?,hostOrganization: freezed == hostOrganization ? _self.hostOrganization : hostOrganization // ignore: cast_nullable_to_non_nullable
as String?,hostOrganizationName: freezed == hostOrganizationName ? _self.hostOrganizationName : hostOrganizationName // ignore: cast_nullable_to_non_nullable
as String?,hostOrganizationLineage: freezed == hostOrganizationLineage ? _self.hostOrganizationLineage : hostOrganizationLineage // ignore: cast_nullable_to_non_nullable
as List<String>?,hostOrganizationLineageNames: freezed == hostOrganizationLineageNames ? _self.hostOrganizationLineageNames : hostOrganizationLineageNames // ignore: cast_nullable_to_non_nullable
as List<String>?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SourceDto].
extension SourceDtoPatterns on SourceDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SourceDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SourceDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SourceDto value)  $default,){
final _that = this;
switch (_that) {
case _SourceDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SourceDto value)?  $default,){
final _that = this;
switch (_that) {
case _SourceDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? displayName,  String? issnL,  List<String>? issn,  bool? isOa,  bool? isInDoaj,  bool? isIndexedInScopus,  bool? isCore,  String? hostOrganization,  String? hostOrganizationName,  List<String>? hostOrganizationLineage,  List<String>? hostOrganizationLineageNames,  String? type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SourceDto() when $default != null:
return $default(_that.id,_that.displayName,_that.issnL,_that.issn,_that.isOa,_that.isInDoaj,_that.isIndexedInScopus,_that.isCore,_that.hostOrganization,_that.hostOrganizationName,_that.hostOrganizationLineage,_that.hostOrganizationLineageNames,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? displayName,  String? issnL,  List<String>? issn,  bool? isOa,  bool? isInDoaj,  bool? isIndexedInScopus,  bool? isCore,  String? hostOrganization,  String? hostOrganizationName,  List<String>? hostOrganizationLineage,  List<String>? hostOrganizationLineageNames,  String? type)  $default,) {final _that = this;
switch (_that) {
case _SourceDto():
return $default(_that.id,_that.displayName,_that.issnL,_that.issn,_that.isOa,_that.isInDoaj,_that.isIndexedInScopus,_that.isCore,_that.hostOrganization,_that.hostOrganizationName,_that.hostOrganizationLineage,_that.hostOrganizationLineageNames,_that.type);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? displayName,  String? issnL,  List<String>? issn,  bool? isOa,  bool? isInDoaj,  bool? isIndexedInScopus,  bool? isCore,  String? hostOrganization,  String? hostOrganizationName,  List<String>? hostOrganizationLineage,  List<String>? hostOrganizationLineageNames,  String? type)?  $default,) {final _that = this;
switch (_that) {
case _SourceDto() when $default != null:
return $default(_that.id,_that.displayName,_that.issnL,_that.issn,_that.isOa,_that.isInDoaj,_that.isIndexedInScopus,_that.isCore,_that.hostOrganization,_that.hostOrganizationName,_that.hostOrganizationLineage,_that.hostOrganizationLineageNames,_that.type);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _SourceDto implements SourceDto {
  const _SourceDto({this.id, this.displayName, this.issnL, final  List<String>? issn, this.isOa, this.isInDoaj, this.isIndexedInScopus, this.isCore, this.hostOrganization, this.hostOrganizationName, final  List<String>? hostOrganizationLineage, final  List<String>? hostOrganizationLineageNames, this.type}): _issn = issn,_hostOrganizationLineage = hostOrganizationLineage,_hostOrganizationLineageNames = hostOrganizationLineageNames;
  factory _SourceDto.fromJson(Map<String, dynamic> json) => _$SourceDtoFromJson(json);

@override final  String? id;
@override final  String? displayName;
@override final  String? issnL;
 final  List<String>? _issn;
@override List<String>? get issn {
  final value = _issn;
  if (value == null) return null;
  if (_issn is EqualUnmodifiableListView) return _issn;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool? isOa;
@override final  bool? isInDoaj;
@override final  bool? isIndexedInScopus;
@override final  bool? isCore;
@override final  String? hostOrganization;
@override final  String? hostOrganizationName;
 final  List<String>? _hostOrganizationLineage;
@override List<String>? get hostOrganizationLineage {
  final value = _hostOrganizationLineage;
  if (value == null) return null;
  if (_hostOrganizationLineage is EqualUnmodifiableListView) return _hostOrganizationLineage;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _hostOrganizationLineageNames;
@override List<String>? get hostOrganizationLineageNames {
  final value = _hostOrganizationLineageNames;
  if (value == null) return null;
  if (_hostOrganizationLineageNames is EqualUnmodifiableListView) return _hostOrganizationLineageNames;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? type;

/// Create a copy of SourceDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SourceDtoCopyWith<_SourceDto> get copyWith => __$SourceDtoCopyWithImpl<_SourceDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SourceDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SourceDto&&(identical(other.id, id) || other.id == id)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.issnL, issnL) || other.issnL == issnL)&&const DeepCollectionEquality().equals(other._issn, _issn)&&(identical(other.isOa, isOa) || other.isOa == isOa)&&(identical(other.isInDoaj, isInDoaj) || other.isInDoaj == isInDoaj)&&(identical(other.isIndexedInScopus, isIndexedInScopus) || other.isIndexedInScopus == isIndexedInScopus)&&(identical(other.isCore, isCore) || other.isCore == isCore)&&(identical(other.hostOrganization, hostOrganization) || other.hostOrganization == hostOrganization)&&(identical(other.hostOrganizationName, hostOrganizationName) || other.hostOrganizationName == hostOrganizationName)&&const DeepCollectionEquality().equals(other._hostOrganizationLineage, _hostOrganizationLineage)&&const DeepCollectionEquality().equals(other._hostOrganizationLineageNames, _hostOrganizationLineageNames)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,displayName,issnL,const DeepCollectionEquality().hash(_issn),isOa,isInDoaj,isIndexedInScopus,isCore,hostOrganization,hostOrganizationName,const DeepCollectionEquality().hash(_hostOrganizationLineage),const DeepCollectionEquality().hash(_hostOrganizationLineageNames),type);

@override
String toString() {
  return 'SourceDto(id: $id, displayName: $displayName, issnL: $issnL, issn: $issn, isOa: $isOa, isInDoaj: $isInDoaj, isIndexedInScopus: $isIndexedInScopus, isCore: $isCore, hostOrganization: $hostOrganization, hostOrganizationName: $hostOrganizationName, hostOrganizationLineage: $hostOrganizationLineage, hostOrganizationLineageNames: $hostOrganizationLineageNames, type: $type)';
}


}

/// @nodoc
abstract mixin class _$SourceDtoCopyWith<$Res> implements $SourceDtoCopyWith<$Res> {
  factory _$SourceDtoCopyWith(_SourceDto value, $Res Function(_SourceDto) _then) = __$SourceDtoCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? displayName, String? issnL, List<String>? issn, bool? isOa, bool? isInDoaj, bool? isIndexedInScopus, bool? isCore, String? hostOrganization, String? hostOrganizationName, List<String>? hostOrganizationLineage, List<String>? hostOrganizationLineageNames, String? type
});




}
/// @nodoc
class __$SourceDtoCopyWithImpl<$Res>
    implements _$SourceDtoCopyWith<$Res> {
  __$SourceDtoCopyWithImpl(this._self, this._then);

  final _SourceDto _self;
  final $Res Function(_SourceDto) _then;

/// Create a copy of SourceDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? displayName = freezed,Object? issnL = freezed,Object? issn = freezed,Object? isOa = freezed,Object? isInDoaj = freezed,Object? isIndexedInScopus = freezed,Object? isCore = freezed,Object? hostOrganization = freezed,Object? hostOrganizationName = freezed,Object? hostOrganizationLineage = freezed,Object? hostOrganizationLineageNames = freezed,Object? type = freezed,}) {
  return _then(_SourceDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,issnL: freezed == issnL ? _self.issnL : issnL // ignore: cast_nullable_to_non_nullable
as String?,issn: freezed == issn ? _self._issn : issn // ignore: cast_nullable_to_non_nullable
as List<String>?,isOa: freezed == isOa ? _self.isOa : isOa // ignore: cast_nullable_to_non_nullable
as bool?,isInDoaj: freezed == isInDoaj ? _self.isInDoaj : isInDoaj // ignore: cast_nullable_to_non_nullable
as bool?,isIndexedInScopus: freezed == isIndexedInScopus ? _self.isIndexedInScopus : isIndexedInScopus // ignore: cast_nullable_to_non_nullable
as bool?,isCore: freezed == isCore ? _self.isCore : isCore // ignore: cast_nullable_to_non_nullable
as bool?,hostOrganization: freezed == hostOrganization ? _self.hostOrganization : hostOrganization // ignore: cast_nullable_to_non_nullable
as String?,hostOrganizationName: freezed == hostOrganizationName ? _self.hostOrganizationName : hostOrganizationName // ignore: cast_nullable_to_non_nullable
as String?,hostOrganizationLineage: freezed == hostOrganizationLineage ? _self._hostOrganizationLineage : hostOrganizationLineage // ignore: cast_nullable_to_non_nullable
as List<String>?,hostOrganizationLineageNames: freezed == hostOrganizationLineageNames ? _self._hostOrganizationLineageNames : hostOrganizationLineageNames // ignore: cast_nullable_to_non_nullable
as List<String>?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
