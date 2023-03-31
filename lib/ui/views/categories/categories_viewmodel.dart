import 'package:posto/app/app.locator.dart';
import 'package:posto/models/models.dart';
import 'package:posto/services/firebase_service.dart';
import 'package:stacked/stacked.dart';

class CategoriesViewModel extends BaseViewModel {
  final _firebaseService = locator<FirebaseService>();

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
}
