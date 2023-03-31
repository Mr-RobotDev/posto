import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:posto/ui/views/templates/templates_view.dart';
import 'package:posto/services/firebase_service.dart';
import 'package:posto/ui/views/home/home_view.dart';
import 'package:posto/ui/views/categories/categories_view.dart';
import 'package:posto/ui/views/settings/settings_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: TemplatesView),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: CategoriesView),
    MaterialRoute(page: SettingsView),
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
