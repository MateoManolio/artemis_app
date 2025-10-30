// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topic_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TopicDto {

 String? get id; String? get displayName; double? get score; TopicLevelDto? get subfield; TopicLevelDto? get field; TopicLevelDto? get domain;
/// Create a copy of TopicDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopicDtoCopyWith<TopicDto> get copyWith => _$TopicDtoCopyWithImpl<TopicDto>(this as TopicDto, _$identity);

  /// Serializes this TopicDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopicDto&&(identical(other.id, id) || other.id == id)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.score, score) || other.score == score)&&(identical(other.subfield, subfield) || other.subfield == subfield)&&(identical(other.field, field) || other.field == field)&&(identical(other.domain, domain) || other.domain == domain));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,displayName,score,subfield,field,domain);

@override
String toString() {
  return 'TopicDto(id: $id, displayName: $displayName, score: $score, subfield: $subfield, field: $field, domain: $domain)';
}


}

/// @nodoc
abstract mixin class $TopicDtoCopyWith<$Res>  {
  factory $TopicDtoCopyWith(TopicDto value, $Res Function(TopicDto) _then) = _$TopicDtoCopyWithImpl;
@useResult
$Res call({
 String? id, String? displayName, double? score, TopicLevelDto? subfield, TopicLevelDto? field, TopicLevelDto? domain
});


$TopicLevelDtoCopyWith<$Res>? get subfield;$TopicLevelDtoCopyWith<$Res>? get field;$TopicLevelDtoCopyWith<$Res>? get domain;

}
/// @nodoc
class _$TopicDtoCopyWithImpl<$Res>
    implements $TopicDtoCopyWith<$Res> {
  _$TopicDtoCopyWithImpl(this._self, this._then);

  final TopicDto _self;
  final $Res Function(TopicDto) _then;

/// Create a copy of TopicDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? displayName = freezed,Object? score = freezed,Object? subfield = freezed,Object? field = freezed,Object? domain = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double?,subfield: freezed == subfield ? _self.subfield : subfield // ignore: cast_nullable_to_non_nullable
as TopicLevelDto?,field: freezed == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as TopicLevelDto?,domain: freezed == domain ? _self.domain : domain // ignore: cast_nullable_to_non_nullable
as TopicLevelDto?,
  ));
}
/// Create a copy of TopicDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TopicLevelDtoCopyWith<$Res>? get subfield {
    if (_self.subfield == null) {
    return null;
  }

  return $TopicLevelDtoCopyWith<$Res>(_self.subfield!, (value) {
    return _then(_self.copyWith(subfield: value));
  });
}/// Create a copy of TopicDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TopicLevelDtoCopyWith<$Res>? get field {
    if (_self.field == null) {
    return null;
  }

  return $TopicLevelDtoCopyWith<$Res>(_self.field!, (value) {
    return _then(_self.copyWith(field: value));
  });
}/// Create a copy of TopicDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TopicLevelDtoCopyWith<$Res>? get domain {
    if (_self.domain == null) {
    return null;
  }

  return $TopicLevelDtoCopyWith<$Res>(_self.domain!, (value) {
    return _then(_self.copyWith(domain: value));
  });
}
}


/// Adds pattern-matching-related methods to [TopicDto].
extension TopicDtoPatterns on TopicDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopicDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopicDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopicDto value)  $default,){
final _that = this;
switch (_that) {
case _TopicDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopicDto value)?  $default,){
final _that = this;
switch (_that) {
case _TopicDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? displayName,  double? score,  TopicLevelDto? subfield,  TopicLevelDto? field,  TopicLevelDto? domain)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopicDto() when $default != null:
return $default(_that.id,_that.displayName,_that.score,_that.subfield,_that.field,_that.domain);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? displayName,  double? score,  TopicLevelDto? subfield,  TopicLevelDto? field,  TopicLevelDto? domain)  $default,) {final _that = this;
switch (_that) {
case _TopicDto():
return $default(_that.id,_that.displayName,_that.score,_that.subfield,_that.field,_that.domain);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? displayName,  double? score,  TopicLevelDto? subfield,  TopicLevelDto? field,  TopicLevelDto? domain)?  $default,) {final _that = this;
switch (_that) {
case _TopicDto() when $default != null:
return $default(_that.id,_that.displayName,_that.score,_that.subfield,_that.field,_that.domain);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _TopicDto implements TopicDto {
  const _TopicDto({this.id, this.displayName, this.score, this.subfield, this.field, this.domain});
  factory _TopicDto.fromJson(Map<String, dynamic> json) => _$TopicDtoFromJson(json);

@override final  String? id;
@override final  String? displayName;
@override final  double? score;
@override final  TopicLevelDto? subfield;
@override final  TopicLevelDto? field;
@override final  TopicLevelDto? domain;

/// Create a copy of TopicDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopicDtoCopyWith<_TopicDto> get copyWith => __$TopicDtoCopyWithImpl<_TopicDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopicDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopicDto&&(identical(other.id, id) || other.id == id)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.score, score) || other.score == score)&&(identical(other.subfield, subfield) || other.subfield == subfield)&&(identical(other.field, field) || other.field == field)&&(identical(other.domain, domain) || other.domain == domain));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,displayName,score,subfield,field,domain);

@override
String toString() {
  return 'TopicDto(id: $id, displayName: $displayName, score: $score, subfield: $subfield, field: $field, domain: $domain)';
}


}

/// @nodoc
abstract mixin class _$TopicDtoCopyWith<$Res> implements $TopicDtoCopyWith<$Res> {
  factory _$TopicDtoCopyWith(_TopicDto value, $Res Function(_TopicDto) _then) = __$TopicDtoCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? displayName, double? score, TopicLevelDto? subfield, TopicLevelDto? field, TopicLevelDto? domain
});


@override $TopicLevelDtoCopyWith<$Res>? get subfield;@override $TopicLevelDtoCopyWith<$Res>? get field;@override $TopicLevelDtoCopyWith<$Res>? get domain;

}
/// @nodoc
class __$TopicDtoCopyWithImpl<$Res>
    implements _$TopicDtoCopyWith<$Res> {
  __$TopicDtoCopyWithImpl(this._self, this._then);

  final _TopicDto _self;
  final $Res Function(_TopicDto) _then;

/// Create a copy of TopicDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? displayName = freezed,Object? score = freezed,Object? subfield = freezed,Object? field = freezed,Object? domain = freezed,}) {
  return _then(_TopicDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double?,subfield: freezed == subfield ? _self.subfield : subfield // ignore: cast_nullable_to_non_nullable
as TopicLevelDto?,field: freezed == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as TopicLevelDto?,domain: freezed == domain ? _self.domain : domain // ignore: cast_nullable_to_non_nullable
as TopicLevelDto?,
  ));
}

/// Create a copy of TopicDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TopicLevelDtoCopyWith<$Res>? get subfield {
    if (_self.subfield == null) {
    return null;
  }

  return $TopicLevelDtoCopyWith<$Res>(_self.subfield!, (value) {
    return _then(_self.copyWith(subfield: value));
  });
}/// Create a copy of TopicDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TopicLevelDtoCopyWith<$Res>? get field {
    if (_self.field == null) {
    return null;
  }

  return $TopicLevelDtoCopyWith<$Res>(_self.field!, (value) {
    return _then(_self.copyWith(field: value));
  });
}/// Create a copy of TopicDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TopicLevelDtoCopyWith<$Res>? get domain {
    if (_self.domain == null) {
    return null;
  }

  return $TopicLevelDtoCopyWith<$Res>(_self.domain!, (value) {
    return _then(_self.copyWith(domain: value));
  });
}
}


/// @nodoc
mixin _$TopicLevelDto {

 String? get id; String? get displayName;
/// Create a copy of TopicLevelDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopicLevelDtoCopyWith<TopicLevelDto> get copyWith => _$TopicLevelDtoCopyWithImpl<TopicLevelDto>(this as TopicLevelDto, _$identity);

  /// Serializes this TopicLevelDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopicLevelDto&&(identical(other.id, id) || other.id == id)&&(identical(other.displayName, displayName) || other.displayName == displayName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,displayName);

@override
String toString() {
  return 'TopicLevelDto(id: $id, displayName: $displayName)';
}


}

/// @nodoc
abstract mixin class $TopicLevelDtoCopyWith<$Res>  {
  factory $TopicLevelDtoCopyWith(TopicLevelDto value, $Res Function(TopicLevelDto) _then) = _$TopicLevelDtoCopyWithImpl;
@useResult
$Res call({
 String? id, String? displayName
});




}
/// @nodoc
class _$TopicLevelDtoCopyWithImpl<$Res>
    implements $TopicLevelDtoCopyWith<$Res> {
  _$TopicLevelDtoCopyWithImpl(this._self, this._then);

  final TopicLevelDto _self;
  final $Res Function(TopicLevelDto) _then;

/// Create a copy of TopicLevelDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? displayName = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TopicLevelDto].
extension TopicLevelDtoPatterns on TopicLevelDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopicLevelDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopicLevelDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopicLevelDto value)  $default,){
final _that = this;
switch (_that) {
case _TopicLevelDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopicLevelDto value)?  $default,){
final _that = this;
switch (_that) {
case _TopicLevelDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? displayName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopicLevelDto() when $default != null:
return $default(_that.id,_that.displayName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? displayName)  $default,) {final _that = this;
switch (_that) {
case _TopicLevelDto():
return $default(_that.id,_that.displayName);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? displayName)?  $default,) {final _that = this;
switch (_that) {
case _TopicLevelDto() when $default != null:
return $default(_that.id,_that.displayName);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _TopicLevelDto implements TopicLevelDto {
  const _TopicLevelDto({this.id, this.displayName});
  factory _TopicLevelDto.fromJson(Map<String, dynamic> json) => _$TopicLevelDtoFromJson(json);

@override final  String? id;
@override final  String? displayName;

/// Create a copy of TopicLevelDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopicLevelDtoCopyWith<_TopicLevelDto> get copyWith => __$TopicLevelDtoCopyWithImpl<_TopicLevelDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopicLevelDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopicLevelDto&&(identical(other.id, id) || other.id == id)&&(identical(other.displayName, displayName) || other.displayName == displayName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,displayName);

@override
String toString() {
  return 'TopicLevelDto(id: $id, displayName: $displayName)';
}


}

/// @nodoc
abstract mixin class _$TopicLevelDtoCopyWith<$Res> implements $TopicLevelDtoCopyWith<$Res> {
  factory _$TopicLevelDtoCopyWith(_TopicLevelDto value, $Res Function(_TopicLevelDto) _then) = __$TopicLevelDtoCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? displayName
});




}
/// @nodoc
class __$TopicLevelDtoCopyWithImpl<$Res>
    implements _$TopicLevelDtoCopyWith<$Res> {
  __$TopicLevelDtoCopyWithImpl(this._self, this._then);

  final _TopicLevelDto _self;
  final $Res Function(_TopicLevelDto) _then;

/// Create a copy of TopicLevelDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? displayName = freezed,}) {
  return _then(_TopicLevelDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
