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
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'Preferences',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.grey,
                  letterSpacing: 1.5,
                ),
          ),
        ),
        SettingTile(
          color: Colors.green,
          icon: PlatformIcons(context).flag,
          title: AppLocalizations.of(context)!.language,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'App Info',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.grey,
                  letterSpacing: 1.5,
                ),
          ),
        ),
        SettingTile(
          color: Colors.red,
          icon: PlatformIcons(context).info,
          title: AppLocalizations.of(context)!.about,
        ),
        SettingTile(
          color: Colors.blue,
          icon: PlatformIcons(context).settings,
          title: AppLocalizations.of(context)!.settings,
        ),
        SettingTile(
          title: 'Feedback',
          icon: PlatformIcons(context).checkMark,
          color: Colors.orange,
        ),
        SettingTile(
          title: 'Share',
          icon: PlatformIcons(context).share,
          color: Colors.purple,
        ),
        SettingTile(
          title: 'Rate',
          icon: PlatformIcons(context).star,
          color: Colors.amber,
        ),
        SettingTile(
          title: 'Privacy Policy',
          icon: PlatformIcons(context).padLock,
          color: Colors.pink,
        ),
        SettingTile(
          title: 'Terms of Service',
          icon: PlatformIcons(context).cloudDownloadSolid,
          color: Colors.teal,
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
