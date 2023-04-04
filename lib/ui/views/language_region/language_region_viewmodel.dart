import 'package:flutter/material.dart';
import 'package:posto/app/app.locator.dart';
import 'package:posto/services/localization_service.dart';
import 'package:posto/services/shared_preferences_service.dart';
import 'package:stacked/stacked.dart';

class LanguageRegionViewModel extends BaseViewModel {
  final _localizationService = locator<LocalizationService>();
  final _sharedPreferencesService = locator<SharedPreferencesService>();

  int current = 0;
  Locale? locale;

  void updateCurrent(int index) {
    current = index;
    updateLocale();
    _localizationService.setLocale(locale);
    _sharedPreferencesService.setString('locale', locale!.languageCode);
    notifyListeners();
  }

  void updateIndex() {
    final localeString = _sharedPreferencesService.getString('locale');
    switch (localeString) {
      case 'en':
        current = 0;
        break;
      case 'ar':
        current = 1;
        break;
      case 'zh':
        current = 2;
        break;
      case 'es':
        current = 3;
        break;
      case 'de':
        current = 4;
        break;
      case 'ur':
        current = 5;
        break;
      case 'fr':
        current = 6;
        break;
      case 'it':
        current = 7;
        break;
      case 'ja':
        current = 8;
        break;
      default:
        current = 0;
    }
    notifyListeners();
  }

  void updateLocale() {
    switch (current) {
      case 0:
        locale = const Locale('en');
        break;
      case 1:
        locale = const Locale('ar');
        break;
      case 2:
        locale = const Locale('zh');
        break;
      case 3:
        locale = const Locale('es');
        break;
      case 4:
        locale = const Locale('de');
        break;
      case 5:
        locale = const Locale('ur');
        break;
      case 6:
        locale = const Locale('fr');
        break;
      case 7:
        locale = const Locale('it');
        break;
      case 8:
        locale = const Locale('ja');
        break;
      default:
        locale = const Locale('en');
    }
  }
}
