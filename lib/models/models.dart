import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class Template with _$Template {
  factory Template({
    required String id,
    required String thumbnail
  }) = _Template;

factory Template.fromJson(Map<String, dynamic> json) =>
_$TemplateFromJson(json);
}
