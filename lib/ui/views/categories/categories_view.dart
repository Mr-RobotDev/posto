import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'categories_viewmodel.dart';

class CategoriesView extends StackedView<CategoriesViewModel> {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CategoriesViewModel viewModel,
    Widget? child,
  ) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left: 10.0,
          right: 10.0,
          top: 10.0,
        ),
        child: CustomScrollView(slivers: []),
      ),
    );
  }

  @override
  CategoriesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CategoriesViewModel();
}
