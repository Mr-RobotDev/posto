import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:posto/ui/dumb_widgets/animated_dialog.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:posto/ui/common/ui_helpers.dart';
import 'package:posto/ui/dumb_widgets/shimmer_image.dart';
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
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.templates,
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: isDarkModeTextColor(context),
                      fontWeight: FontWeight.bold,
                    ),
              ),
              PlatformWidget(
                cupertino: (_, __) => PlatformIconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(PlatformIcons(context).add),
                  onPressed: viewModel.showGalleryCameraSheet,
                ),
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: verticalSpaceSmall,
        ),
        viewModel.initialBusy
            ? const TemplatesLoadingShimmer()
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
                    return GestureDetector(
                      onTap: () =>
                          viewModel.navigateToCreatePost(template.thumbnail),
                      onLongPress: () {
                        viewModel.popupDialog = OverlayEntry(
                          builder: (context) => AnimatedDialog(
                            child: ShimmerImage(url: template.thumbnail),
                          ),
                        );
                        Overlay.of(context).insert(viewModel.popupDialog!);
                      },
                      onLongPressEnd: (details) =>
                          viewModel.popupDialog?.remove(),
                      child: ShimmerImage(
                        url: template.thumbnail,
                        height: height,
                      ),
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
  }
}
