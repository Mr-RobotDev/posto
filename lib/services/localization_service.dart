import 'dart:async';
import 'dart:ui';

class LocalizationService {
  final StreamController<Locale?> _localeController =
      StreamController<Locale?>.broadcast();

  Stream<Locale?> get localeStream => _localeController.stream;

  void setLocale(Locale? locale) {
    _localeController.add(locale);
  }
}
