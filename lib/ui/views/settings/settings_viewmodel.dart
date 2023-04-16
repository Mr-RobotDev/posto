import 'dart:ui';

import 'package:posto/app/app.locator.dart';
import 'package:posto/app/app.router.dart';
import 'package:posto/services/localization_service.dart';
import 'package:posto/services/shared_preferences_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SettingsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _localizationService = locator<LocalizationService>();
  final _sharedPreferencesService = locator<SharedPreferencesService>();

  Locale? locale;
  String? languageCode;

  Future<void> init() async {
    getStoredLocale();
    fetchLocale();
  }

  void fetchLocale() {
    _localizationService.localeStream.listen((event) {
      locale = event;
      languageCode = event!.languageCode;
      notifyListeners();
    });
  }

  void getStoredLocale() {
    languageCode = _sharedPreferencesService.getString('locale');
    notifyListeners();
  }

  void navigateToLanguageRegion() {
    _navigationService.navigateToLanguageRegionView();
  }
}
