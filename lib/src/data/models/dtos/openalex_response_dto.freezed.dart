// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'openalex_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OpenAlexResponse<E> {

 OpenAlexMeta get meta; List<E> get results; List<OpenAlexGroupBy>? get groupBy;
/// Create a copy of OpenAlexResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpenAlexResponseCopyWith<E, OpenAlexResponse<E>> get copyWith => _$OpenAlexResponseCopyWithImpl<E, OpenAlexResponse<E>>(this as OpenAlexResponse<E>, _$identity);

  /// Serializes this OpenAlexResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(E) toJsonE);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenAlexResponse<E>&&(identical(other.meta, meta) || other.meta == meta)&&const DeepCollectionEquality().equals(other.results, results)&&const DeepCollectionEquality().equals(other.groupBy, groupBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,meta,const DeepCollectionEquality().hash(results),const DeepCollectionEquality().hash(groupBy));

@override
String toString() {
  return 'OpenAlexResponse<$E>(meta: $meta, results: $results, groupBy: $groupBy)';
}


}

/// @nodoc
abstract mixin class $OpenAlexResponseCopyWith<E,$Res>  {
  factory $OpenAlexResponseCopyWith(OpenAlexResponse<E> value, $Res Function(OpenAlexResponse<E>) _then) = _$OpenAlexResponseCopyWithImpl;
@useResult
$Res call({
 OpenAlexMeta meta, List<E> results, List<OpenAlexGroupBy>? groupBy
});


$OpenAlexMetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$OpenAlexResponseCopyWithImpl<E,$Res>
    implements $OpenAlexResponseCopyWith<E, $Res> {
  _$OpenAlexResponseCopyWithImpl(this._self, this._then);

  final OpenAlexResponse<E> _self;
  final $Res Function(OpenAlexResponse<E>) _then;

/// Create a copy of OpenAlexResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? meta = null,Object? results = null,Object? groupBy = freezed,}) {
  return _then(_self.copyWith(
meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as OpenAlexMeta,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<E>,groupBy: freezed == groupBy ? _self.groupBy : groupBy // ignore: cast_nullable_to_non_nullable
as List<OpenAlexGroupBy>?,
  ));
}
/// Create a copy of OpenAlexResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OpenAlexMetaCopyWith<$Res> get meta {
  
  return $OpenAlexMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [OpenAlexResponse].
extension OpenAlexResponsePatterns<E> on OpenAlexResponse<E> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OpenAlexResponse<E> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OpenAlexResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OpenAlexResponse<E> value)  $default,){
final _that = this;
switch (_that) {
case _OpenAlexResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OpenAlexResponse<E> value)?  $default,){
final _that = this;
switch (_that) {
case _OpenAlexResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OpenAlexMeta meta,  List<E> results,  List<OpenAlexGroupBy>? groupBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OpenAlexResponse() when $default != null:
return $default(_that.meta,_that.results,_that.groupBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OpenAlexMeta meta,  List<E> results,  List<OpenAlexGroupBy>? groupBy)  $default,) {final _that = this;
switch (_that) {
case _OpenAlexResponse():
return $default(_that.meta,_that.results,_that.groupBy);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OpenAlexMeta meta,  List<E> results,  List<OpenAlexGroupBy>? groupBy)?  $default,) {final _that = this;
switch (_that) {
case _OpenAlexResponse() when $default != null:
return $default(_that.meta,_that.results,_that.groupBy);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true, genericArgumentFactories: true)
class _OpenAlexResponse<E> implements OpenAlexResponse<E> {
   _OpenAlexResponse({required this.meta, required final  List<E> results, final  List<OpenAlexGroupBy>? groupBy}): _results = results,_groupBy = groupBy;
  factory _OpenAlexResponse.fromJson(Map<String, dynamic> json,E Function(Object?) fromJsonE) => _$OpenAlexResponseFromJson(json,fromJsonE);

@override final  OpenAlexMeta meta;
 final  List<E> _results;
@override List<E> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

 final  List<OpenAlexGroupBy>? _groupBy;
@override List<OpenAlexGroupBy>? get groupBy {
  final value = _groupBy;
  if (value == null) return null;
  if (_groupBy is EqualUnmodifiableListView) return _groupBy;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of OpenAlexResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenAlexResponseCopyWith<E, _OpenAlexResponse<E>> get copyWith => __$OpenAlexResponseCopyWithImpl<E, _OpenAlexResponse<E>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(E) toJsonE) {
  return _$OpenAlexResponseToJson<E>(this, toJsonE);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenAlexResponse<E>&&(identical(other.meta, meta) || other.meta == meta)&&const DeepCollectionEquality().equals(other._results, _results)&&const DeepCollectionEquality().equals(other._groupBy, _groupBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,meta,const DeepCollectionEquality().hash(_results),const DeepCollectionEquality().hash(_groupBy));

@override
String toString() {
  return 'OpenAlexResponse<$E>(meta: $meta, results: $results, groupBy: $groupBy)';
}


}

/// @nodoc
abstract mixin class _$OpenAlexResponseCopyWith<E,$Res> implements $OpenAlexResponseCopyWith<E, $Res> {
  factory _$OpenAlexResponseCopyWith(_OpenAlexResponse<E> value, $Res Function(_OpenAlexResponse<E>) _then) = __$OpenAlexResponseCopyWithImpl;
@override @useResult
$Res call({
 OpenAlexMeta meta, List<E> results, List<OpenAlexGroupBy>? groupBy
});


@override $OpenAlexMetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$OpenAlexResponseCopyWithImpl<E,$Res>
    implements _$OpenAlexResponseCopyWith<E, $Res> {
  __$OpenAlexResponseCopyWithImpl(this._self, this._then);

  final _OpenAlexResponse<E> _self;
  final $Res Function(_OpenAlexResponse<E>) _then;

/// Create a copy of OpenAlexResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meta = null,Object? results = null,Object? groupBy = freezed,}) {
  return _then(_OpenAlexResponse<E>(
meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as OpenAlexMeta,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<E>,groupBy: freezed == groupBy ? _self._groupBy : groupBy // ignore: cast_nullable_to_non_nullable
as List<OpenAlexGroupBy>?,
  ));
}

/// Create a copy of OpenAlexResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OpenAlexMetaCopyWith<$Res> get meta {
  
  return $OpenAlexMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$OpenAlexMeta {

 int get count; int? get dbResponseTimeMs; int get page; int get perPage; int? get groupsCount;
/// Create a copy of OpenAlexMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpenAlexMetaCopyWith<OpenAlexMeta> get copyWith => _$OpenAlexMetaCopyWithImpl<OpenAlexMeta>(this as OpenAlexMeta, _$identity);

  /// Serializes this OpenAlexMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenAlexMeta&&(identical(other.count, count) || other.count == count)&&(identical(other.dbResponseTimeMs, dbResponseTimeMs) || other.dbResponseTimeMs == dbResponseTimeMs)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.groupsCount, groupsCount) || other.groupsCount == groupsCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,dbResponseTimeMs,page,perPage,groupsCount);

@override
String toString() {
  return 'OpenAlexMeta(count: $count, dbResponseTimeMs: $dbResponseTimeMs, page: $page, perPage: $perPage, groupsCount: $groupsCount)';
}


}

/// @nodoc
abstract mixin class $OpenAlexMetaCopyWith<$Res>  {
  factory $OpenAlexMetaCopyWith(OpenAlexMeta value, $Res Function(OpenAlexMeta) _then) = _$OpenAlexMetaCopyWithImpl;
@useResult
$Res call({
 int count, int? dbResponseTimeMs, int page, int perPage, int? groupsCount
});




}
/// @nodoc
class _$OpenAlexMetaCopyWithImpl<$Res>
    implements $OpenAlexMetaCopyWith<$Res> {
  _$OpenAlexMetaCopyWithImpl(this._self, this._then);

  final OpenAlexMeta _self;
  final $Res Function(OpenAlexMeta) _then;

/// Create a copy of OpenAlexMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? dbResponseTimeMs = freezed,Object? page = null,Object? perPage = null,Object? groupsCount = freezed,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,dbResponseTimeMs: freezed == dbResponseTimeMs ? _self.dbResponseTimeMs : dbResponseTimeMs // ignore: cast_nullable_to_non_nullable
as int?,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,groupsCount: freezed == groupsCount ? _self.groupsCount : groupsCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [OpenAlexMeta].
extension OpenAlexMetaPatterns on OpenAlexMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OpenAlexMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OpenAlexMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OpenAlexMeta value)  $default,){
final _that = this;
switch (_that) {
case _OpenAlexMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OpenAlexMeta value)?  $default,){
final _that = this;
switch (_that) {
case _OpenAlexMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int count,  int? dbResponseTimeMs,  int page,  int perPage,  int? groupsCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OpenAlexMeta() when $default != null:
return $default(_that.count,_that.dbResponseTimeMs,_that.page,_that.perPage,_that.groupsCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int count,  int? dbResponseTimeMs,  int page,  int perPage,  int? groupsCount)  $default,) {final _that = this;
switch (_that) {
case _OpenAlexMeta():
return $default(_that.count,_that.dbResponseTimeMs,_that.page,_that.perPage,_that.groupsCount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int count,  int? dbResponseTimeMs,  int page,  int perPage,  int? groupsCount)?  $default,) {final _that = this;
switch (_that) {
case _OpenAlexMeta() when $default != null:
return $default(_that.count,_that.dbResponseTimeMs,_that.page,_that.perPage,_that.groupsCount);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _OpenAlexMeta implements OpenAlexMeta {
   _OpenAlexMeta({required this.count, this.dbResponseTimeMs, required this.page, required this.perPage, this.groupsCount});
  factory _OpenAlexMeta.fromJson(Map<String, dynamic> json) => _$OpenAlexMetaFromJson(json);

@override final  int count;
@override final  int? dbResponseTimeMs;
@override final  int page;
@override final  int perPage;
@override final  int? groupsCount;

/// Create a copy of OpenAlexMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenAlexMetaCopyWith<_OpenAlexMeta> get copyWith => __$OpenAlexMetaCopyWithImpl<_OpenAlexMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OpenAlexMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenAlexMeta&&(identical(other.count, count) || other.count == count)&&(identical(other.dbResponseTimeMs, dbResponseTimeMs) || other.dbResponseTimeMs == dbResponseTimeMs)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.groupsCount, groupsCount) || other.groupsCount == groupsCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,dbResponseTimeMs,page,perPage,groupsCount);

@override
String toString() {
  return 'OpenAlexMeta(count: $count, dbResponseTimeMs: $dbResponseTimeMs, page: $page, perPage: $perPage, groupsCount: $groupsCount)';
}


}

/// @nodoc
abstract mixin class _$OpenAlexMetaCopyWith<$Res> implements $OpenAlexMetaCopyWith<$Res> {
  factory _$OpenAlexMetaCopyWith(_OpenAlexMeta value, $Res Function(_OpenAlexMeta) _then) = __$OpenAlexMetaCopyWithImpl;
@override @useResult
$Res call({
 int count, int? dbResponseTimeMs, int page, int perPage, int? groupsCount
});




}
/// @nodoc
class __$OpenAlexMetaCopyWithImpl<$Res>
    implements _$OpenAlexMetaCopyWith<$Res> {
  __$OpenAlexMetaCopyWithImpl(this._self, this._then);

  final _OpenAlexMeta _self;
  final $Res Function(_OpenAlexMeta) _then;

/// Create a copy of OpenAlexMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? dbResponseTimeMs = freezed,Object? page = null,Object? perPage = null,Object? groupsCount = freezed,}) {
  return _then(_OpenAlexMeta(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,dbResponseTimeMs: freezed == dbResponseTimeMs ? _self.dbResponseTimeMs : dbResponseTimeMs // ignore: cast_nullable_to_non_nullable
as int?,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,groupsCount: freezed == groupsCount ? _self.groupsCount : groupsCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$OpenAlexGroupBy {

/// nombre del grupo (ej. "oa_status", "publication_year", etc.)
 String? get key;/// valor del grupo (ej. "gold", "closed", "2025", etc.)
 dynamic get keyDisplayName;/// conteo de elementos en el grupo
 int? get count;/// filtros/resultados derivados que OpenAlex incluya
 Map<String, dynamic>? get filter;/// campo raw por si OpenAlex devuelve estructuras nuevas
 Map<String, dynamic>? get value;
/// Create a copy of OpenAlexGroupBy
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpenAlexGroupByCopyWith<OpenAlexGroupBy> get copyWith => _$OpenAlexGroupByCopyWithImpl<OpenAlexGroupBy>(this as OpenAlexGroupBy, _$identity);

  /// Serializes this OpenAlexGroupBy to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenAlexGroupBy&&(identical(other.key, key) || other.key == key)&&const DeepCollectionEquality().equals(other.keyDisplayName, keyDisplayName)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.filter, filter)&&const DeepCollectionEquality().equals(other.value, value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,const DeepCollectionEquality().hash(keyDisplayName),count,const DeepCollectionEquality().hash(filter),const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'OpenAlexGroupBy(key: $key, keyDisplayName: $keyDisplayName, count: $count, filter: $filter, value: $value)';
}


}

/// @nodoc
abstract mixin class $OpenAlexGroupByCopyWith<$Res>  {
  factory $OpenAlexGroupByCopyWith(OpenAlexGroupBy value, $Res Function(OpenAlexGroupBy) _then) = _$OpenAlexGroupByCopyWithImpl;
@useResult
$Res call({
 String? key, dynamic keyDisplayName, int? count, Map<String, dynamic>? filter, Map<String, dynamic>? value
});




}
/// @nodoc
class _$OpenAlexGroupByCopyWithImpl<$Res>
    implements $OpenAlexGroupByCopyWith<$Res> {
  _$OpenAlexGroupByCopyWithImpl(this._self, this._then);

  final OpenAlexGroupBy _self;
  final $Res Function(OpenAlexGroupBy) _then;

/// Create a copy of OpenAlexGroupBy
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = freezed,Object? keyDisplayName = freezed,Object? count = freezed,Object? filter = freezed,Object? value = freezed,}) {
  return _then(_self.copyWith(
key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,keyDisplayName: freezed == keyDisplayName ? _self.keyDisplayName : keyDisplayName // ignore: cast_nullable_to_non_nullable
as dynamic,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,filter: freezed == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [OpenAlexGroupBy].
extension OpenAlexGroupByPatterns on OpenAlexGroupBy {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OpenAlexGroupBy value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OpenAlexGroupBy() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OpenAlexGroupBy value)  $default,){
final _that = this;
switch (_that) {
case _OpenAlexGroupBy():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OpenAlexGroupBy value)?  $default,){
final _that = this;
switch (_that) {
case _OpenAlexGroupBy() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? key,  dynamic keyDisplayName,  int? count,  Map<String, dynamic>? filter,  Map<String, dynamic>? value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OpenAlexGroupBy() when $default != null:
return $default(_that.key,_that.keyDisplayName,_that.count,_that.filter,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? key,  dynamic keyDisplayName,  int? count,  Map<String, dynamic>? filter,  Map<String, dynamic>? value)  $default,) {final _that = this;
switch (_that) {
case _OpenAlexGroupBy():
return $default(_that.key,_that.keyDisplayName,_that.count,_that.filter,_that.value);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? key,  dynamic keyDisplayName,  int? count,  Map<String, dynamic>? filter,  Map<String, dynamic>? value)?  $default,) {final _that = this;
switch (_that) {
case _OpenAlexGroupBy() when $default != null:
return $default(_that.key,_that.keyDisplayName,_that.count,_that.filter,_that.value);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _OpenAlexGroupBy implements OpenAlexGroupBy {
   _OpenAlexGroupBy({this.key, this.keyDisplayName, this.count, final  Map<String, dynamic>? filter, final  Map<String, dynamic>? value}): _filter = filter,_value = value;
  factory _OpenAlexGroupBy.fromJson(Map<String, dynamic> json) => _$OpenAlexGroupByFromJson(json);

/// nombre del grupo (ej. "oa_status", "publication_year", etc.)
@override final  String? key;
/// valor del grupo (ej. "gold", "closed", "2025", etc.)
@override final  dynamic keyDisplayName;
/// conteo de elementos en el grupo
@override final  int? count;
/// filtros/resultados derivados que OpenAlex incluya
 final  Map<String, dynamic>? _filter;
/// filtros/resultados derivados que OpenAlex incluya
@override Map<String, dynamic>? get filter {
  final value = _filter;
  if (value == null) return null;
  if (_filter is EqualUnmodifiableMapView) return _filter;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// campo raw por si OpenAlex devuelve estructuras nuevas
 final  Map<String, dynamic>? _value;
/// campo raw por si OpenAlex devuelve estructuras nuevas
@override Map<String, dynamic>? get value {
  final value = _value;
  if (value == null) return null;
  if (_value is EqualUnmodifiableMapView) return _value;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of OpenAlexGroupBy
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenAlexGroupByCopyWith<_OpenAlexGroupBy> get copyWith => __$OpenAlexGroupByCopyWithImpl<_OpenAlexGroupBy>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OpenAlexGroupByToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenAlexGroupBy&&(identical(other.key, key) || other.key == key)&&const DeepCollectionEquality().equals(other.keyDisplayName, keyDisplayName)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._filter, _filter)&&const DeepCollectionEquality().equals(other._value, _value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,const DeepCollectionEquality().hash(keyDisplayName),count,const DeepCollectionEquality().hash(_filter),const DeepCollectionEquality().hash(_value));

@override
String toString() {
  return 'OpenAlexGroupBy(key: $key, keyDisplayName: $keyDisplayName, count: $count, filter: $filter, value: $value)';
}


}

/// @nodoc
abstract mixin class _$OpenAlexGroupByCopyWith<$Res> implements $OpenAlexGroupByCopyWith<$Res> {
  factory _$OpenAlexGroupByCopyWith(_OpenAlexGroupBy value, $Res Function(_OpenAlexGroupBy) _then) = __$OpenAlexGroupByCopyWithImpl;
@override @useResult
$Res call({
 String? key, dynamic keyDisplayName, int? count, Map<String, dynamic>? filter, Map<String, dynamic>? value
});




}
/// @nodoc
class __$OpenAlexGroupByCopyWithImpl<$Res>
    implements _$OpenAlexGroupByCopyWith<$Res> {
  __$OpenAlexGroupByCopyWithImpl(this._self, this._then);

  final _OpenAlexGroupBy _self;
  final $Res Function(_OpenAlexGroupBy) _then;

/// Create a copy of OpenAlexGroupBy
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = freezed,Object? keyDisplayName = freezed,Object? count = freezed,Object? filter = freezed,Object? value = freezed,}) {
  return _then(_OpenAlexGroupBy(
key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,keyDisplayName: freezed == keyDisplayName ? _self.keyDisplayName : keyDisplayName // ignore: cast_nullable_to_non_nullable
as dynamic,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,filter: freezed == filter ? _self._filter : filter // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,value: freezed == value ? _self._value : value // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
