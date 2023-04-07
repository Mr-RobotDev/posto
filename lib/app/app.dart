import 'package:posto/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:posto/ui/views/templates/templates_view.dart';
import 'package:posto/services/firebase_service.dart';
import 'package:posto/ui/views/home/home_view.dart';
import 'package:posto/ui/views/categories/categories_view.dart';
import 'package:posto/ui/views/settings/settings_view.dart';
import 'package:posto/ui/views/language_region/language_region_view.dart';
import 'package:posto/services/localization_service.dart';
import 'package:posto/ui/views/app/app_view.dart';
import 'package:posto/services/shared_preferences_service.dart';
import 'package:posto/ui/views/category_templates/category_templates_view.dart';
import 'package:posto/services/media_service.dart';
import 'package:posto/ui/bottom_sheets/gallery_camera/gallery_camera_sheet.dart';
import 'package:posto/ui/views/create_post/create_post_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: TemplatesView),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: CategoriesView),
    MaterialRoute(page: SettingsView),
    MaterialRoute(page: LanguageRegionView),
    MaterialRoute(page: AppView),
    MaterialRoute(page: CategoryTemplatesView),
    MaterialRoute(page: CreatePostView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: FirebaseService),
    LazySingleton(classType: LocalizationService),
    LazySingleton(classType: SharedPreferencesService),
    LazySingleton(classType: MediaService),
    Singleton(classType: HomeViewModel),
// @stacked-service
  ],
  logger: StackedLogger(),
  bottomsheets: [
    StackedBottomsheet(classType: GalleryCameraSheet),
    // @stacked-bottom-sheet
  ],
)
class App {}
