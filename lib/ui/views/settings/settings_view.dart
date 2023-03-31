import 'package:flutter/material.dart';
import 'package:posto/ui/common/ui_helpers.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Text(
            AppLocalizations.of(context)!.settings,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: isDarkModeTextColor(context),
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        const SliverToBoxAdapter(
          child: verticalSpaceSmall,
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
