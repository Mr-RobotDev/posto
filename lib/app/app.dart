import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:posto/ui/views/templates/templates_view.dart';
import 'package:posto/services/firebase_service.dart';
import 'package:posto/ui/views/search_category_templates/search_category_templates_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: TemplatesView),
    MaterialRoute(page: SearchCategoryTemplatesView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: FirebaseService),
// @stacked-service
  ],
  logger: StackedLogger(),
)
class App {}
