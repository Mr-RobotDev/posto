import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'templates_viewmodel.dart';

class TemplatesView extends StackedView<TemplatesViewModel> {
  const TemplatesView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    TemplatesViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  TemplatesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TemplatesViewModel();
}
