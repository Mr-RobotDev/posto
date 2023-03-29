import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
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
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text(
          AppLocalizations.of(context)!.templates,
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Hero(
                    tag: 'search',
                    child: Material(
                      child: PlatformTextField(
                        focusNode: viewModel.focusNode,
                        onTap: viewModel.navigateToSearchCategoryTemplatesView,
                        hintText: 'Search',
                        material: (_, __) => MaterialTextFieldData(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                          ),
                        ),
                        cupertino: (_, __) => CupertinoTextFieldData(
                          prefix: const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Icon(CupertinoIcons.search),
                          ),
                          decoration: BoxDecoration(
                            color: isDarkMode(context),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
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
