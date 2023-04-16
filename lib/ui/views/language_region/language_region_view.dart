import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:posto/ui/common/ui_helpers.dart';
import 'package:posto/ui/dumb_widgets/custom_divider.dart';
import 'package:stacked/stacked.dart';

import 'language_region_viewmodel.dart';

class LanguageRegionView extends StackedView<LanguageRegionViewModel> {
  const LanguageRegionView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LanguageRegionViewModel viewModel,
    Widget? child,
  ) {
    return PlatformScaffold(
      cupertino: (context, platform) => CupertinoPageScaffoldData(
        backgroundColor: settingsBackgroundColor(context),
      ),
      appBar: PlatformAppBar(
        title: Text(
          AppLocalizations.of(context)!.languageAndRegion,
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
          decoration: BoxDecoration(
            color: isDarkModeTileColor(context),
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              PlatformListTile(
                title: Text(
                  AppLocalizations.of(context)!.english,
                ),
                trailing: viewModel.current == 0
                    ? Icon(
                        PlatformIcons(context).checkMark,
                      )
                    : null,
                onTap: () => viewModel.updateCurrent(0),
              ),
              const CustomDivider(),
              PlatformListTile(
                title: Text(
                  AppLocalizations.of(context)!.arabic,
                ),
                trailing: viewModel.current == 1
                    ? Icon(
                        PlatformIcons(context).checkMark,
                      )
                    : null,
                onTap: () => viewModel.updateCurrent(1),
              ),
              const CustomDivider(),
              PlatformListTile(
                title: Text(
                  AppLocalizations.of(context)!.chinese,
                ),
                trailing: viewModel.current == 2
                    ? Icon(
                        PlatformIcons(context).checkMark,
                      )
                    : null,
                onTap: () => viewModel.updateCurrent(2),
              ),
              const CustomDivider(),
              PlatformListTile(
                title: Text(
                  AppLocalizations.of(context)!.spanish,
                ),
                trailing: viewModel.current == 3
                    ? Icon(
                        PlatformIcons(context).checkMark,
                      )
                    : null,
                onTap: () => viewModel.updateCurrent(3),
              ),
              const CustomDivider(),
              PlatformListTile(
                title: Text(
                  AppLocalizations.of(context)!.german,
                ),
                trailing: viewModel.current == 4
                    ? Icon(
                        PlatformIcons(context).checkMark,
                      )
                    : null,
                onTap: () => viewModel.updateCurrent(4),
              ),
              const CustomDivider(),
              PlatformListTile(
                title: Text(
                  AppLocalizations.of(context)!.urdu,
                ),
                trailing: viewModel.current == 5
                    ? Icon(
                        PlatformIcons(context).checkMark,
                      )
                    : null,
                onTap: () => viewModel.updateCurrent(5),
              ),
              const CustomDivider(),
              PlatformListTile(
                title: Text(
                  AppLocalizations.of(context)!.french,
                ),
                trailing: viewModel.current == 6
                    ? Icon(
                        PlatformIcons(context).checkMark,
                      )
                    : null,
                onTap: () => viewModel.updateCurrent(6),
              ),
              const CustomDivider(),
              PlatformListTile(
                title: Text(
                  AppLocalizations.of(context)!.italian,
                ),
                trailing: viewModel.current == 7
                    ? Icon(
                        PlatformIcons(context).checkMark,
                      )
                    : null,
                onTap: () => viewModel.updateCurrent(7),
              ),
              const CustomDivider(),
              PlatformListTile(
                title: Text(
                  AppLocalizations.of(context)!.japanese,
                ),
                trailing: viewModel.current == 8
                    ? Icon(
                        PlatformIcons(context).checkMark,
                      )
                    : null,
                onTap: () => viewModel.updateCurrent(8),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  LanguageRegionViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LanguageRegionViewModel();

  @override
  void onViewModelReady(
    LanguageRegionViewModel viewModel,
  ) {
    viewModel.updateIndex();
  }
}
