import 'package:posto/app/app.locator.dart';
import 'package:posto/models/models.dart';
import 'package:posto/services/firebase_service.dart';
import 'package:stacked/stacked.dart';

class CategoryTemplatesViewModel extends BaseViewModel {
  final _firebaseService = locator<FirebaseService>();

  final List<Template> _templates = [];
  List<Template> get templates => _templates;

  int? currentTemplateIndex = 0;

  void nextTemplate(int index) {
    currentTemplateIndex = index;
    notifyListeners();
  }

  Future<void> fetchTemplates(String categoryName) async {
    final templates = await runBusyFuture(
      _firebaseService.getTemplates(
        categoryName,
      ),
    );
    if (templates != null) {
      _templates.addAll(templates);
    }
  }
}
