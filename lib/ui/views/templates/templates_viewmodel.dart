import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:posto/app/app.bottomsheets.dart';
import 'package:posto/app/app.locator.dart';
import 'package:posto/app/app.router.dart';
import 'package:posto/models/models.dart';
import 'package:posto/services/firebase_service.dart';
import 'package:posto/services/media_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class TemplatesViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _firebaseService = locator<FirebaseService>();
  final _mediaService = locator<MediaService>();
  final _bottomSheetService = locator<BottomSheetService>();

  ScrollController scrollController = ScrollController();
  OverlayEntry? popupDialog;
  FocusNode focusNode = FocusNode();

  File? _image;
  File? get image => _image;

  final List<Template> _templates = [];
  List<Template> get templates => _templates;

  List<Category>? _categories = [];
  List<Category>? get categories => _categories!;

  bool get initialBusy => _templates.length < 10;

  int _currentCategory = 0;
  int get currentCategory => _currentCategory;

  Future<void> initialise() async {
    await fetchCategories();
    await fetchTemplates();

    scrollController.addListener(() async {
      if (_currentCategory == _categories!.length) {
        return;
      }
      await fetchTemplates();
    });
  }

  Future<void> fetchCategories() async {
    if (_firebaseService.hasLoaded) {
      _categories = _firebaseService.categories;
    } else {
      _categories = await runBusyFuture(
        _firebaseService.getCategories(),
      );
    }
    _categories!.shuffle();
  }

  Future<void> fetchTemplates() async {
    final templates = await runBusyFuture(
      _firebaseService.getTemplates(
        _categories![_currentCategory++].name,
      ),
    );
    if (templates != null) {
      _templates.addAll(templates);
    }
  }

  void showGalleryCameraSheet() async {
    final SheetResponse<dynamic>? result =
        await _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.galleryCamera,
    );
    if (result != null && result.confirmed) {
      final file = await _mediaService.pickImage(result.data);
      if (file != null) {
        _image = File(file.path);
        _navigationService.navigateToCreatePostView(image: _image);
      }
    }
  }

  void navigateToCreatePost(String imageUrl) {
    _navigationService.navigateToCreatePostView(imageUrl: imageUrl);
  }
}
