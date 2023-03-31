import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:stacked/stacked.dart';

import 'package:posto/ui/common/ui_helpers.dart';
import 'package:posto/ui/dumb_widgets/shimmer_image_widget.dart';
import 'package:posto/ui/dumb_widgets/templates_loading_shimmer_widget.dart';

import 'templates_viewmodel.dart';

class TemplatesView extends StackedView<TemplatesViewModel> {
  const TemplatesView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    TemplatesViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10.0,
          right: 10.0,
          top: 10.0,
        ),
        child: CustomScrollView(
          slivers: [
            viewModel.initialBusy
                ? const TemplatesLoadingShimmerWidget()
                : SliverFillRemaining(
                    child: MasonryGridView.count(
                      controller: viewModel.scrollController,
                      crossAxisCount: 2,
                      mainAxisSpacing: 8.0,
                      crossAxisSpacing: 8.0,
                      itemCount: viewModel.templates.length,
                      itemBuilder: (context, index) {
                        final template = viewModel.templates[index];
                        double height = getMinHeight(index);
                        return ShimmerImageWidget(
                          url: template.thumbnail,
                          height: height,
                        );
                      },
                    ),
                  ),
            viewModel.isBusy
                ? const SliverFillRemaining(
                    child: Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                  )
                : const SliverToBoxAdapter(),
            if (viewModel.currentCategory == viewModel.categories!.length)
              const SliverFillRemaining(
                child: Center(
                  child: Text('No more templates'),
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  TemplatesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TemplatesViewModel();

  @override
  void onViewModelReady(
    TemplatesViewModel viewModel,
  ) {
    viewModel.initialise();
    super.onViewModelReady(viewModel);
  }
}
