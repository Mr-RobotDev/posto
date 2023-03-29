import 'package:posto/app/app.locator.dart';
import 'package:posto/models/models.dart';
import 'package:posto/services/firebase_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SearchCategoryTemplatesViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _firebaseService = locator<FirebaseService>();

  String text = '';
  List<Template> _templates = [];
  List<Template> get templates => _templates;

  Future<void> onSubmitted(String value) async {
    text = value;
    final templates = await runBusyFuture(
      _firebaseService.getTemplates(value),
    );
    if (templates != null) {
      _templates = templates;
      notifyListeners();
    }
  }

  void pop() {
    _navigationService.back();
  }
}
