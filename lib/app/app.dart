import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:posto/ui/views/templates/templates_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: TemplatesView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: SnackbarService),
    // @stacked-service
  ],
  logger: StackedLogger(),
)
class App {}
