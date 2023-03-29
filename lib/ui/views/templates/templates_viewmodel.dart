import 'package:flutter/cupertino.dart';
import 'package:posto/app/app.locator.dart';
import 'package:posto/models/models.dart';
import 'package:posto/services/firebase_service.dart';
import 'package:stacked/stacked.dart';

class TemplatesViewModel extends BaseViewModel {
  final _firebaseService = locator<FirebaseService>();

  ScrollController scrollController = ScrollController();

  final List<Template>? _templates = [];
  List<Template>? get templates => _templates;

  List<String>? _categories = [];
  List<String>? get categories => _categories;

  bool get initialBusy => _templates!.length < 10;

  int _currentCategory = 0;
  int get currentCategory => _currentCategory;

  Future<void> initialise() async {
    await fetchCategories();
    await fetchTemplates();
    scrollController.addListener(() async {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        if (_currentCategory == _categories!.length) {
          return;
        }
        fetchTemplates();
      }
    });
  }

  Future<void> fetchCategories() async {
    if (_firebaseService.hasLoaded) {
      _categories = _firebaseService.categories;
    } else {
      _categories = await runBusyFuture(
        _firebaseService.getCategories(),
      );
      _categories!.shuffle();
    }
  }

  Future<void> fetchTemplates() async {
    final templates = await runBusyFuture(
      _firebaseService.getTemplates(
        _categories![_currentCategory++],
      ),
    );
    if (templates != null) {
      _templates!.addAll(templates);
    }
  }
}
