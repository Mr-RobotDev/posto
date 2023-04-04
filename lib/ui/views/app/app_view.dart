import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:posto/app/app.router.dart';
import 'package:posto/l10n/l10n.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app_viewmodel.dart';

class AppView extends StackedView<AppViewModel> {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AppViewModel viewModel,
    Widget? child,
  ) {
    return PlatformProvider(
      settings: PlatformSettingsData(
        iosUsesMaterialWidgets: true,
        iosUseZeroPaddingForAppbarPlatformIcon: true,
        legacyIosUsesMaterialWidgets: true,
        wrapCupertinoAppBarMiddleWithMediaQuery: true,
      ),
      builder: (context) => PlatformApp(
        debugShowCheckedModeBanner: false,
        material: (_, __) => MaterialAppData(
          theme: ThemeData.light(
            useMaterial3: true,
          ),
          darkTheme: ThemeData.dark(
            useMaterial3: true,
          ),
          themeMode: ThemeMode.system,
        ),
        cupertino: (context, platform) => CupertinoAppData(),
        initialRoute: Routes.homeView,
        onGenerateRoute: StackedRouter().onGenerateRoute,
        navigatorKey: StackedService.navigatorKey,
        navigatorObservers: [
          StackedService.routeObserver,
        ],
        locale: viewModel.locale,
        supportedLocales: L10n.all,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
      ),
    );
  }

  @override
  AppViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AppViewModel();

  @override
  void onViewModelReady(
    AppViewModel viewModel,
  ) {
    viewModel.fetchLocale();
  }
}
