import 'package:posto/app/app.locator.dart';
import 'package:posto/models/models.dart';
import 'package:posto/services/firebase_service.dart';
import 'package:stacked/stacked.dart';

class CategoriesViewModel extends BaseViewModel {
  final _firebaseService = locator<FirebaseService>();

  List<Category>? get categories => _firebaseService.categories;
}
