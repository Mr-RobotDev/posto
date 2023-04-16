import 'package:posto/app/app.locator.dart';
import 'package:posto/app/app.router.dart';
import 'package:posto/models/models.dart';
import 'package:posto/services/firebase_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CategoriesViewModel extends BaseViewModel {
  final _firebaseService = locator<FirebaseService>();
  final _navigationService = locator<NavigationService>();

  List<Category>? _categories = [];
  List<Category>? get categories => _categories!;

  Future<void> fetchCategories() async {
    if (_firebaseService.hasLoaded) {
      _categories = _firebaseService.categories;
    } else {
      _categories = await runBusyFuture(
        _firebaseService.getCategories(),
      );
    }
    _categories!.shuffle();
    rebuildUi();
  }

  void navigateToCategoryTemplates(Category category) {
    _navigationService.navigateToCategoryTemplatesView(name: category.name);
  }
}
