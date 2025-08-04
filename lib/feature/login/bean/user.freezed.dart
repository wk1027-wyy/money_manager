// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$user {

 String? get name; int? get age; bool? get isActive;
/// Create a copy of user
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$userCopyWith<user> get copyWith => _$userCopyWithImpl<user>(this as user, _$identity);

  /// Serializes this user to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is user&&(identical(other.name, name) || other.name == name)&&(identical(other.age, age) || other.age == age)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,age,isActive);

@override
String toString() {
  return 'user(name: $name, age: $age, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $userCopyWith<$Res>  {
  factory $userCopyWith(user value, $Res Function(user) _then) = _$userCopyWithImpl;
@useResult
$Res call({
 String? name, int? age, bool? isActive
});




}
/// @nodoc
class _$userCopyWithImpl<$Res>
    implements $userCopyWith<$Res> {
  _$userCopyWithImpl(this._self, this._then);

  final user _self;
  final $Res Function(user) _then;

/// Create a copy of user
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? age = freezed,Object? isActive = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [user].
extension userPatterns on user {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _user value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _user() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _user value)  $default,){
final _that = this;
switch (_that) {
case _user():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _user value)?  $default,){
final _that = this;
switch (_that) {
case _user() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  int? age,  bool? isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _user() when $default != null:
return $default(_that.name,_that.age,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  int? age,  bool? isActive)  $default,) {final _that = this;
switch (_that) {
case _user():
return $default(_that.name,_that.age,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  int? age,  bool? isActive)?  $default,) {final _that = this;
switch (_that) {
case _user() when $default != null:
return $default(_that.name,_that.age,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _user implements user {
  const _user({this.name, this.age, this.isActive});
  factory _user.fromJson(Map<String, dynamic> json) => _$userFromJson(json);

@override final  String? name;
@override final  int? age;
@override final  bool? isActive;

/// Create a copy of user
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$userCopyWith<_user> get copyWith => __$userCopyWithImpl<_user>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$userToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _user&&(identical(other.name, name) || other.name == name)&&(identical(other.age, age) || other.age == age)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,age,isActive);

@override
String toString() {
  return 'user(name: $name, age: $age, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$userCopyWith<$Res> implements $userCopyWith<$Res> {
  factory _$userCopyWith(_user value, $Res Function(_user) _then) = __$userCopyWithImpl;
@override @useResult
$Res call({
 String? name, int? age, bool? isActive
});




}
/// @nodoc
class __$userCopyWithImpl<$Res>
    implements _$userCopyWith<$Res> {
  __$userCopyWithImpl(this._self, this._then);

  final _user _self;
  final $Res Function(_user) _then;

/// Create a copy of user
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? age = freezed,Object? isActive = freezed,}) {
  return _then(_user(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
