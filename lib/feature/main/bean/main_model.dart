import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:tuple/tuple.dart';
part 'main_model.freezed.dart';
part 'main_model.g.dart';

@freezed
abstract class MainModel with _$MainModel {
  const factory MainModel({
    int? selectIndex,
    @JsonKey(ignore: true)
    List<Tuple3<Widget,Widget,String>>? pages
  }) = _MainModel;

  factory MainModel.fromJson(Map<String, Object?> json) =>
      _$MainModelFromJson(json);
}
