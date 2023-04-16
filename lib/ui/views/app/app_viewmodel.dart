import 'dart:ui';

import 'package:posto/app/app.locator.dart';
import 'package:posto/services/localization_service.dart';
import 'package:posto/services/shared_preferences_service.dart';
import 'package:stacked/stacked.dart';

class AppViewModel extends BaseViewModel {
  final _localizationService = locator<LocalizationService>();
  final _sharedPreferencesService = locator<SharedPreferencesService>();

  Locale? locale;

  void fetchLocale() {
    _localizationService.localeStream.listen((event) {
      locale = event;
      notifyListeners();
    });
  }

  Future<void> init() async {
    await _sharedPreferencesService.init();
    getStoredLocale();
    fetchLocale();
  }

  void getStoredLocale() {
    final localeString = _sharedPreferencesService.getString('locale');
    switch (localeString) {
      case 'ar':
        locale = const Locale('ar');
        break;
      case 'de':
        locale = const Locale('de');
        break;
      case 'en':
        locale = const Locale('en');
        break;
      case 'es':
        locale = const Locale('es');
        break;
      case 'fr':
        locale = const Locale('fr');
        break;
      case 'it':
        locale = const Locale('it');
        break;
      case 'ja':
        locale = const Locale('ja');
        break;
      case 'ur':
        locale = const Locale('ur');
        break;
      case 'zh':
        locale = const Locale('zh');
        break;
      default:
        locale = const Locale('en');
    }
    notifyListeners();
  }
}
