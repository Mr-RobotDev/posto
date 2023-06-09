import 'package:flutter/material.dart';
import 'package:posto/ui/common/ui_helpers.dart';
import 'package:posto/ui/dumb_widgets/shimmer_image.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Text(
            AppLocalizations.of(context)!.categories,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: isDarkModeTextColor(context),
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        const SliverToBoxAdapter(
          child: verticalSpaceSmall,
        ),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          delegate: SliverChildBuilderDelegate(
            childCount: viewModel.categories!.length,
            (BuildContext context, int index) {
              return GestureDetector(
                onTap: () => viewModel.navigateToCategoryTemplates(
                  viewModel.categories![index],
                ),
                child: GridTile(
                  child: ShimmerImage(
                    url: viewModel.categories![index].backgroundImage,
                  ),
                  footer: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 4.0,
                      vertical: 4.0,
                    ),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        viewModel.categories![index].name,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  CategoriesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CategoriesViewModel();

  @override
  void onViewModelReady(
    CategoriesViewModel viewModel,
  ) {
    viewModel.fetchCategories();
  }
}
