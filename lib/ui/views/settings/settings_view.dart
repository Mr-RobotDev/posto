import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:posto/ui/common/ui_helpers.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:posto/ui/dumb_widgets/setting_tile.dart';
import 'package:stacked/stacked.dart';

import 'settings_viewmodel.dart';

class SettingsView extends StackedView<SettingsViewModel> {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SettingsViewModel viewModel,
    Widget? child,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            AppLocalizations.of(context)!.settings,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: isDarkModeTextColor(context),
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        verticalSpaceMedium,
        SettingTile(
          icon: PlatformIcons(context).brightness,
          title: 'Dark',
        ),
        verticalSpaceMedium,
        SettingTile(
          icon: PlatformIcons(context).flag,
          title: 'Language & Reigon',
        ),
      ],
    );
  }

  @override
  SettingsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SettingsViewModel();
}
