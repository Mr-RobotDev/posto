import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:posto/app/app.locator.dart';
import 'package:posto/models/models.dart';
import 'package:posto/services/media_service.dart';
import 'package:posto/ui/common/ui_helpers.dart';
import 'package:posto/ui/views/create_post/text_item.dart';
import 'package:posto/ui/views/create_post/get_text_dialog.dart';
import 'package:share_plus/share_plus.dart';
import 'package:stacked/stacked.dart';
import 'package:widgets_to_image/widgets_to_image.dart';

class CreatePostViewModel extends BaseViewModel {
  final _mediaService = locator<MediaService>();

  WidgetsToImageController controller = WidgetsToImageController();

  double aspectRatio = 1 / 1;
  List<TextItem> texts = [];

  bool downloadBusy = false;
  bool shareBusy = false;

  void changeAspectRatio(double value) {
    aspectRatio = value;
    notifyListeners();
  }

  void fetchText(BuildContext context) async {
    final result = await getText(context);
    if (result != null) {
      addText(result);
    }
  }

  void editText(BuildContext context, TextItem textItem) async {
    final result = await getText(context, textItem);
    if (result != null) {
      texts.remove(textItem);
      addText(result);
    }
  }

  void addText(TextItem text) {
    texts.add(text);
    notifyListeners();
  }

  void removeText(BuildContext context, TextItem text) async {
    await showConfirmationDialog(context,
        content: 'Are you sure you want to remove this text?',
        confirmText: 'Delete',
        cancelText: 'Cancel', onConfirm: () {
      texts.remove(text);
      notifyListeners();
    });
  }

  void share() async {
    shareBusy = true;
    notifyListeners();
    final imageBytes = await controller.capture();
    final Directory tempDir = await getTemporaryDirectory();
    final String tempPath = tempDir.path;
    final file = await bytesToFile('$tempPath/image.png', imageBytes!);
    Share.shareXFiles([XFile(file.path)]);
    shareBusy = false;
    notifyListeners();
  }

  Future<File> bytesToFile(String filePath, List<int> bytes) async {
    final file = File(filePath);
    await file.writeAsBytes(bytes);
    return file;
  }

  void download(BuildContext context) async {
    downloadBusy = true;
    notifyListeners();
    final imageBytes = await controller.capture();
    final isSaved = await _mediaService.saveImage(imageBytes!);
    if (isSaved) {
      await showSavedDialog(context);
    }
    downloadBusy = false;
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
