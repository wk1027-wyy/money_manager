import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class user with _$user {
  const factory user({
    String? name,
    int? age,
    bool? isActive,
  }) = _user;

  factory user.fromJson(Map<String, Object?> json) => _$userFromJson(json);
}
