// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Template _$TemplateFromJson(Map<String, dynamic> json) {
  return _Template.fromJson(json);
}

/// @nodoc
mixin _$Template {
  String get id => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemplateCopyWith<Template> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplateCopyWith<$Res> {
  factory $TemplateCopyWith(Template value, $Res Function(Template) then) =
      _$TemplateCopyWithImpl<$Res, Template>;
  @useResult
  $Res call({String id, String thumbnail});
}

/// @nodoc
class _$TemplateCopyWithImpl<$Res, $Val extends Template>
    implements $TemplateCopyWith<$Res> {
  _$TemplateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? thumbnail = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TemplateCopyWith<$Res> implements $TemplateCopyWith<$Res> {
  factory _$$_TemplateCopyWith(
          _$_Template value, $Res Function(_$_Template) then) =
      __$$_TemplateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String thumbnail});
}

/// @nodoc
class __$$_TemplateCopyWithImpl<$Res>
    extends _$TemplateCopyWithImpl<$Res, _$_Template>
    implements _$$_TemplateCopyWith<$Res> {
  __$$_TemplateCopyWithImpl(
      _$_Template _value, $Res Function(_$_Template) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? thumbnail = null,
  }) {
    return _then(_$_Template(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Template implements _Template {
  _$_Template({required this.id, required this.thumbnail});

  factory _$_Template.fromJson(Map<String, dynamic> json) =>
      _$$_TemplateFromJson(json);

  @override
  final String id;
  @override
  final String thumbnail;

  @override
  String toString() {
    return 'Template(id: $id, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Template &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TemplateCopyWith<_$_Template> get copyWith =>
      __$$_TemplateCopyWithImpl<_$_Template>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TemplateToJson(
      this,
    );
  }
}

abstract class _Template implements Template {
  factory _Template(
      {required final String id,
      required final String thumbnail}) = _$_Template;

  factory _Template.fromJson(Map<String, dynamic> json) = _$_Template.fromJson;

  @override
  String get id;
  @override
  String get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$_TemplateCopyWith<_$_Template> get copyWith =>
      throw _privateConstructorUsedError;
}
