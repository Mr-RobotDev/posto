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

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  String get name => throw _privateConstructorUsedError;
  String get backgroundImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call({String name, String backgroundImage});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? backgroundImage = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundImage: null == backgroundImage
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$$_CategoryCopyWith(
          _$_Category value, $Res Function(_$_Category) then) =
      __$$_CategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String backgroundImage});
}

/// @nodoc
class __$$_CategoryCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$_Category>
    implements _$$_CategoryCopyWith<$Res> {
  __$$_CategoryCopyWithImpl(
      _$_Category _value, $Res Function(_$_Category) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? backgroundImage = null,
  }) {
    return _then(_$_Category(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundImage: null == backgroundImage
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Category implements _Category {
  _$_Category({required this.name, required this.backgroundImage});

  factory _$_Category.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryFromJson(json);

  @override
  final String name;
  @override
  final String backgroundImage;

  @override
  String toString() {
    return 'Category(name: $name, backgroundImage: $backgroundImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Category &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.backgroundImage, backgroundImage) ||
                other.backgroundImage == backgroundImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, backgroundImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      __$$_CategoryCopyWithImpl<_$_Category>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  factory _Category(
      {required final String name,
      required final String backgroundImage}) = _$_Category;

  factory _Category.fromJson(Map<String, dynamic> json) = _$_Category.fromJson;

  @override
  String get name;
  @override
  String get backgroundImage;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AspectRatioButton {
  String get text => throw _privateConstructorUsedError;
  double get aspectRatio => throw _privateConstructorUsedError;
  IconData? get icon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AspectRatioButtonCopyWith<AspectRatioButton> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AspectRatioButtonCopyWith<$Res> {
  factory $AspectRatioButtonCopyWith(
          AspectRatioButton value, $Res Function(AspectRatioButton) then) =
      _$AspectRatioButtonCopyWithImpl<$Res, AspectRatioButton>;
  @useResult
  $Res call({String text, double aspectRatio, IconData? icon});
}

/// @nodoc
class _$AspectRatioButtonCopyWithImpl<$Res, $Val extends AspectRatioButton>
    implements $AspectRatioButtonCopyWith<$Res> {
  _$AspectRatioButtonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? aspectRatio = null,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      aspectRatio: null == aspectRatio
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AspectRatioButtonCopyWith<$Res>
    implements $AspectRatioButtonCopyWith<$Res> {
  factory _$$_AspectRatioButtonCopyWith(_$_AspectRatioButton value,
          $Res Function(_$_AspectRatioButton) then) =
      __$$_AspectRatioButtonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, double aspectRatio, IconData? icon});
}

/// @nodoc
class __$$_AspectRatioButtonCopyWithImpl<$Res>
    extends _$AspectRatioButtonCopyWithImpl<$Res, _$_AspectRatioButton>
    implements _$$_AspectRatioButtonCopyWith<$Res> {
  __$$_AspectRatioButtonCopyWithImpl(
      _$_AspectRatioButton _value, $Res Function(_$_AspectRatioButton) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? aspectRatio = null,
    Object? icon = freezed,
  }) {
    return _then(_$_AspectRatioButton(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      aspectRatio: null == aspectRatio
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
    ));
  }
}

/// @nodoc

class _$_AspectRatioButton implements _AspectRatioButton {
  _$_AspectRatioButton(
      {required this.text, required this.aspectRatio, this.icon});

  @override
  final String text;
  @override
  final double aspectRatio;
  @override
  final IconData? icon;

  @override
  String toString() {
    return 'AspectRatioButton(text: $text, aspectRatio: $aspectRatio, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AspectRatioButton &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.aspectRatio, aspectRatio) ||
                other.aspectRatio == aspectRatio) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, aspectRatio, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AspectRatioButtonCopyWith<_$_AspectRatioButton> get copyWith =>
      __$$_AspectRatioButtonCopyWithImpl<_$_AspectRatioButton>(
          this, _$identity);
}

abstract class _AspectRatioButton implements AspectRatioButton {
  factory _AspectRatioButton(
      {required final String text,
      required final double aspectRatio,
      final IconData? icon}) = _$_AspectRatioButton;

  @override
  String get text;
  @override
  double get aspectRatio;
  @override
  IconData? get icon;
  @override
  @JsonKey(ignore: true)
  _$$_AspectRatioButtonCopyWith<_$_AspectRatioButton> get copyWith =>
      throw _privateConstructorUsedError;
}
