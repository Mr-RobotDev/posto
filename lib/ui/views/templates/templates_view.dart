import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:posto/ui/dumb_widgets/shimmer_image_widget.dart';
import 'package:posto/ui/dumb_widgets/templates_loading_shimmer_widget.dart';
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
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: const Text('Templates'),
      ),
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          child: CustomScrollView(
            controller: viewModel.scrollController,
            slivers: [
              viewModel.initialBusy
                  ? const TemplatesLoadingShimmerWidget()
                  : SliverGrid.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10.0,
                        crossAxisSpacing: 10.0,
                        childAspectRatio: 9 / 16,
                      ),
                      itemCount: viewModel.templates!.length,
                      itemBuilder: (context, index) {
                        final template = viewModel.templates![index];
                        return ShimmerImageWidget(
                          url: template.thumbnail,
                        );
                      },
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
