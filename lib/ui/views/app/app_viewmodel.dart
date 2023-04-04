import 'dart:ui';

import 'package:posto/app/app.locator.dart';
import 'package:posto/services/localization_service.dart';
import 'package:stacked/stacked.dart';

class AppViewModel extends BaseViewModel {
  final _localizationService = locator<LocalizationService>();

  Locale? locale;

  void fetchLocale() {
    _localizationService.localeStream.listen((event) {
      locale = event;
      notifyListeners();
    });
  }
}
