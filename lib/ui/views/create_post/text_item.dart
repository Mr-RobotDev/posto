import 'package:flutter/material.dart';

class TextItem {
  TextItem({
    required this.text,
    this.textAlign,
    this.textStyle,
    this.color = Colors.white,
    this.fontSize = 16,
    this.fontStyle,
    this.fontWeight,
  });

  String text;
  TextAlign? textAlign;
  TextStyle? textStyle;
  Color? color;
  double? fontSize;
  FontStyle? fontStyle;
  FontWeight? fontWeight;

  TextItem copyWith({
    String? text,
    TextAlign? textAlign,
    TextStyle? textStyle,
    Color? color,
    double? fontSize,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
  }) {
    return TextItem(
      text: text ?? this.text,
      textAlign: textAlign ?? this.textAlign,
      textStyle: textStyle ?? this.textStyle,
      color: color ?? this.color,
      fontSize: fontSize ?? this.fontSize,
      fontStyle: fontStyle ?? this.fontStyle,
      fontWeight: fontWeight ?? this.fontWeight,
    );
  }
}
