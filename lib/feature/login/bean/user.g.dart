// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_user _$userFromJson(Map<String, dynamic> json) => _user(
  name: json['name'] as String?,
  age: (json['age'] as num?)?.toInt(),
  isActive: json['isActive'] as bool?,
);

Map<String, dynamic> _$userToJson(_user instance) => <String, dynamic>{
  'name': instance.name,
  'age': instance.age,
  'isActive': instance.isActive,
};
