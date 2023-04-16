import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class Template with _$Template {
  factory Template({
    required String id,
    required String thumbnail,
  }) = _Template;

  factory Template.fromJson(Map<String, dynamic> json) =>
      _$TemplateFromJson(json);
}

@freezed
class Category with _$Category {
  factory Category({
    required String name,
    required String backgroundImage,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class AspectRatioButton with _$AspectRatioButton {
  factory AspectRatioButton({
    required String text,
    required double aspectRatio,
    IconData? icon,
  }) = _AspectRatioButton;
}
