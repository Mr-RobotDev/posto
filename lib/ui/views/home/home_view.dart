import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:posto/ui/common/ui_helpers.dart';
import 'package:posto/ui/views/categories/categories_view.dart';
import 'package:posto/ui/views/settings/settings_view.dart';
import 'package:posto/ui/views/templates/templates_view.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:posto/ui/views/home/home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return PlatformScaffold(
      cupertino: (_, __) => CupertinoPageScaffoldData(
        backgroundColor: isDarkModeBackgroundColor(context),
      ),
      body: SafeArea(
        child: IndexedStack(
          index: viewModel.currentIndex,
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: TemplatesView(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: CategoriesView(),
            ),
            SettingsView(),
          ],
        ),
      ),
      bottomNavBar: PlatformNavBar(
        cupertino: (_, __) => CupertinoTabBarData(
          backgroundColor: isDarkModeNavBarColor(context),
        ),
        height: Platform.isAndroid ? 84.0 : 60.0,
        currentIndex: viewModel.currentIndex,
        itemChanged: viewModel.setIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              PlatformIcons(context).home,
            ),
            label: AppLocalizations.of(context)!.templates,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              PlatformIcons(context).collections,
            ),
            label: AppLocalizations.of(context)!.categories,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              PlatformIcons(context).settings,
            ),
            label: AppLocalizations.of(context)!.settings,
          ),
        ],
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
