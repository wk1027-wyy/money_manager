// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MainModel {

 int? get selectIndex;@JsonKey(ignore: true) List<Tuple3<Widget, Widget, String>>? get pages;
/// Create a copy of MainModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainModelCopyWith<MainModel> get copyWith => _$MainModelCopyWithImpl<MainModel>(this as MainModel, _$identity);

  /// Serializes this MainModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainModel&&(identical(other.selectIndex, selectIndex) || other.selectIndex == selectIndex)&&const DeepCollectionEquality().equals(other.pages, pages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,selectIndex,const DeepCollectionEquality().hash(pages));

@override
String toString() {
  return 'MainModel(selectIndex: $selectIndex, pages: $pages)';
}


}

/// @nodoc
abstract mixin class $MainModelCopyWith<$Res>  {
  factory $MainModelCopyWith(MainModel value, $Res Function(MainModel) _then) = _$MainModelCopyWithImpl;
@useResult
$Res call({
 int? selectIndex,@JsonKey(ignore: true) List<Tuple3<Widget, Widget, String>>? pages
});




}
/// @nodoc
class _$MainModelCopyWithImpl<$Res>
    implements $MainModelCopyWith<$Res> {
  _$MainModelCopyWithImpl(this._self, this._then);

  final MainModel _self;
  final $Res Function(MainModel) _then;

/// Create a copy of MainModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectIndex = freezed,Object? pages = freezed,}) {
  return _then(_self.copyWith(
selectIndex: freezed == selectIndex ? _self.selectIndex : selectIndex // ignore: cast_nullable_to_non_nullable
as int?,pages: freezed == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as List<Tuple3<Widget, Widget, String>>?,
  ));
}

}


/// Adds pattern-matching-related methods to [MainModel].
extension MainModelPatterns on MainModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MainModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MainModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MainModel value)  $default,){
final _that = this;
switch (_that) {
case _MainModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MainModel value)?  $default,){
final _that = this;
switch (_that) {
case _MainModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? selectIndex, @JsonKey(ignore: true)  List<Tuple3<Widget, Widget, String>>? pages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MainModel() when $default != null:
return $default(_that.selectIndex,_that.pages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? selectIndex, @JsonKey(ignore: true)  List<Tuple3<Widget, Widget, String>>? pages)  $default,) {final _that = this;
switch (_that) {
case _MainModel():
return $default(_that.selectIndex,_that.pages);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? selectIndex, @JsonKey(ignore: true)  List<Tuple3<Widget, Widget, String>>? pages)?  $default,) {final _that = this;
switch (_that) {
case _MainModel() when $default != null:
return $default(_that.selectIndex,_that.pages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MainModel implements MainModel {
  const _MainModel({this.selectIndex, @JsonKey(ignore: true) final  List<Tuple3<Widget, Widget, String>>? pages}): _pages = pages;
  factory _MainModel.fromJson(Map<String, dynamic> json) => _$MainModelFromJson(json);

@override final  int? selectIndex;
 final  List<Tuple3<Widget, Widget, String>>? _pages;
@override@JsonKey(ignore: true) List<Tuple3<Widget, Widget, String>>? get pages {
  final value = _pages;
  if (value == null) return null;
  if (_pages is EqualUnmodifiableListView) return _pages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of MainModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MainModelCopyWith<_MainModel> get copyWith => __$MainModelCopyWithImpl<_MainModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MainModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MainModel&&(identical(other.selectIndex, selectIndex) || other.selectIndex == selectIndex)&&const DeepCollectionEquality().equals(other._pages, _pages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,selectIndex,const DeepCollectionEquality().hash(_pages));

@override
String toString() {
  return 'MainModel(selectIndex: $selectIndex, pages: $pages)';
}


}

/// @nodoc
abstract mixin class _$MainModelCopyWith<$Res> implements $MainModelCopyWith<$Res> {
  factory _$MainModelCopyWith(_MainModel value, $Res Function(_MainModel) _then) = __$MainModelCopyWithImpl;
@override @useResult
$Res call({
 int? selectIndex,@JsonKey(ignore: true) List<Tuple3<Widget, Widget, String>>? pages
});




}
/// @nodoc
class __$MainModelCopyWithImpl<$Res>
    implements _$MainModelCopyWith<$Res> {
  __$MainModelCopyWithImpl(this._self, this._then);

  final _MainModel _self;
  final $Res Function(_MainModel) _then;

/// Create a copy of MainModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectIndex = freezed,Object? pages = freezed,}) {
  return _then(_MainModel(
selectIndex: freezed == selectIndex ? _self.selectIndex : selectIndex // ignore: cast_nullable_to_non_nullable
as int?,pages: freezed == pages ? _self._pages : pages // ignore: cast_nullable_to_non_nullable
as List<Tuple3<Widget, Widget, String>>?,
  ));
}


}

// dart format on
