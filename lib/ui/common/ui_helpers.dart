import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

const double _tinySize = 5.0;
const double _smallSize = 10.0;
const double _mediumSize = 25.0;
const double _largeSize = 50.0;
const double _massiveSize = 120.0;

const Widget horizontalSpaceTiny = SizedBox(width: _tinySize);
const Widget horizontalSpaceSmall = SizedBox(width: _smallSize);
const Widget horizontalSpaceMedium = SizedBox(width: _mediumSize);
const Widget horizontalSpaceLarge = SizedBox(width: _largeSize);

const Widget verticalSpaceTiny = SizedBox(height: _tinySize);
const Widget verticalSpaceSmall = SizedBox(height: _smallSize);
const Widget verticalSpaceMedium = SizedBox(height: _mediumSize);
const Widget verticalSpaceLarge = SizedBox(height: _largeSize);
const Widget verticalSpaceMassive = SizedBox(height: _massiveSize);

Widget spacedDivider = Column(
  children: const <Widget>[
    verticalSpaceMedium,
    Divider(color: Colors.blueGrey, height: 5.0),
    verticalSpaceMedium,
  ],
);

Widget verticalSpace(double height) => SizedBox(height: height);

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

double screenHeightFraction(BuildContext context,
        {int dividedBy = 1, double offsetBy = 0, double max = 3000}) =>
    min((screenHeight(context) - offsetBy) / dividedBy, max);

double screenWidthFraction(BuildContext context,
        {int dividedBy = 1, double offsetBy = 0, double max = 3000}) =>
    min((screenWidth(context) - offsetBy) / dividedBy, max);

double halfScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 2);

double thirdScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 3);

double quarterScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 4);

double getResponsiveHorizontalSpaceMedium(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 10);
double getResponsiveSmallFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 14, max: 15);

double getResponsiveMediumFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 16, max: 17);

double getResponsiveLargeFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 21, max: 31);

double getResponsiveExtraLargeFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 25);

double getResponsiveMassiveFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 30);

double getResponsiveFontSize(BuildContext context,
    {double? fontSize, double? max}) {
  max ??= 100;

  var responsiveSize = min(
      screenWidthFraction(context, dividedBy: 10) * ((fontSize ?? 100) / 100),
      max);

  return responsiveSize;
}

bool isDarkMode(BuildContext context) =>
    MediaQuery.of(context).platformBrightness == Brightness.dark;

Color isDarkModeTextColor(BuildContext context) =>
    MediaQuery.of(context).platformBrightness == Brightness.dark
        ? Colors.white
        : Colors.black;

Color isDarkModeTileColor(BuildContext context) =>
    MediaQuery.of(context).platformBrightness == Brightness.dark
        ? CupertinoColors.darkBackgroundGray
        : CupertinoColors.white;

Color settingsBackgroundColor(BuildContext context) =>
    MediaQuery.of(context).platformBrightness == Brightness.dark
        ? CupertinoColors.black
        : CupertinoColors.lightBackgroundGray;

Color scaffoldColor(BuildContext context) =>
    MediaQuery.of(context).platformBrightness == Brightness.dark
        ? CupertinoColors.black
        : CupertinoColors.white;

Color isDarkModeNavBarColor(BuildContext context) =>
    MediaQuery.of(context).platformBrightness == Brightness.dark
        ? CupertinoColors.darkBackgroundGray
        : CupertinoColors.lightBackgroundGray;

double getMinHeight(int index) {
  switch (index % 7) {
    case 0:
      return 100;
    case 1:
      return 350;
    case 2:
      return 200;
    case 3:
      return 150;
    case 4:
      return 400;
    case 5:
      return 250;
    case 6:
      return 300;
    default:
      return 100;
  }
}

Future showConfirmationDialog(
  BuildContext context, {
  required String content,
  required String confirmText,
  required String cancelText,
  required Function onConfirm,
}) async {
  return showPlatformDialog(
    context: context,
    builder: (context) => PlatformAlertDialog(
      content: Text(
        content,
        style: TextStyle(
          color: isDarkModeTextColor(context),
        ),
      ),
      actions: <Widget>[
        PlatformDialogAction(
          child: Text(cancelText),
          onPressed: () => Navigator.of(context).pop(),
        ),
        PlatformDialogAction(
          cupertino: (_, __) => CupertinoDialogActionData(
            isDestructiveAction: true,
          ),
          child: Text(confirmText),
          onPressed: () {
            onConfirm();
            Navigator.of(context).pop();
          },
        ),
      ],
    ),
  );
}

Future showSavedDialog(
  BuildContext context,
) async {
  return showPlatformDialog(
    context: context,
    builder: (_) => PlatformAlertDialog(
      title: Text(
        'Success',
        style: TextStyle(
          color: isDarkModeTextColor(context),
        ),
      ),
      content: Text(
        'Image saved to gallery',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: isDarkModeTextColor(context),
        ),
      ),
      actions: [
        PlatformDialogAction(
          child: const Text('OK'),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ],
    ),
  );
}
