import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
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
      appBar: PlatformAppBar(
        title: Text(viewModel.currentIndex == 0
            ? AppLocalizations.of(context)!.templates
            : viewModel.currentIndex == 1
                ? AppLocalizations.of(context)!.categories
                : AppLocalizations.of(context)!.settings),
      ),
      body: IndexedStack(
        index: viewModel.currentIndex,
        children: const [
          TemplatesView(),
          CategoriesView(),
          SettingsView(),
        ],
      ),
      bottomNavBar: PlatformNavBar(
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
