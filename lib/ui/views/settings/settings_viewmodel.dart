import 'package:posto/app/app.locator.dart';
import 'package:posto/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SettingsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void navigateToLanguageRegion() {
    _navigationService.navigateToLanguageRegionView();
  }
}
