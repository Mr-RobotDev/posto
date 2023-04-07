import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:posto/models/models.dart';
import 'package:stacked/stacked.dart';

class CreatePostViewModel extends BaseViewModel {
  Offset distance = const Offset(18, 18);
  double blurRadius = 10.0;
  bool isPressed = false;

  double aspectRatio = 1 / 1;

  void changeAspectRatio(double aspectRatio) {
    this.aspectRatio = aspectRatio;
    notifyListeners();
  }

  void onPressed() {
    isPressed = !isPressed;
    isPressed
        ? distance = const Offset(10, 10)
        : distance = const Offset(18, 18);
    isPressed ? blurRadius = 5.0 : blurRadius = 10.0;
    notifyListeners();
  }

  final List<AspectRatioButton> aspectRatios = [
    AspectRatioButton(
      text: '1:1',
      aspectRatio: 1 / 1,
      icon: FontAwesomeIcons.instagram,
    ),
    AspectRatioButton(
      text: '4:5',
      aspectRatio: 4 / 5,
      icon: FontAwesomeIcons.instagram,
    ),
    AspectRatioButton(
      text: '16:9',
      aspectRatio: 16 / 9,
    ),
    AspectRatioButton(
      text: '9:16',
      aspectRatio: 9 / 16,
      icon: FontAwesomeIcons.youtube,
    ),
    AspectRatioButton(
      text: '3:4',
      aspectRatio: 3 / 4,
    ),
    AspectRatioButton(
      text: '4:3',
      aspectRatio: 4 / 3,
      icon: FontAwesomeIcons.facebook,
    ),
    AspectRatioButton(
      text: '2:3',
      aspectRatio: 2 / 3,
    ),
    AspectRatioButton(
      text: '3:2',
      aspectRatio: 3 / 2,
    ),
    AspectRatioButton(
      text: '2:1',
      aspectRatio: 2 / 1,
      icon: FontAwesomeIcons.twitter,
    ),
    AspectRatioButton(
      text: '1:2',
      aspectRatio: 1 / 2,
    ),
  ];
}
