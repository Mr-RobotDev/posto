import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:posto/ui/common/ui_helpers.dart';
import 'package:posto/ui/dumb_widgets/shimmer_image_widget.dart';
import 'package:stacked/stacked.dart';

import 'search_category_templates_viewmodel.dart';

class SearchCategoryTemplatesView
    extends StackedView<SearchCategoryTemplatesViewModel> {
  const SearchCategoryTemplatesView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SearchCategoryTemplatesViewModel viewModel,
    Widget? child,
  ) {
    return PlatformScaffold(
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
                  child: Row(
                    children: [
                      Expanded(
                        child: Hero(
                          tag: 'search',
                          child: Material(
                            child: PlatformTextField(
                              textInputAction: TextInputAction.search,
                              onSubmitted: viewModel.onSubmitted,
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
                      PlatformTextButton(
                        child: const Text('Cancel'),
                        onPressed: viewModel.pop,
                      ),
                    ],
                  ),
                ),
              ),
              viewModel.isBusy
                  ? const SliverFillRemaining(
                      child: Center(
                        child: SizedBox(
                          height: 32.0,
                          width: 32.0,
                          child: CircularProgressIndicator.adaptive(),
                        ),
                      ),
                    )
                  : SliverFillRemaining(
                      child: MasonryGridView.count(
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
            ],
          ),
        ),
      ),
    );
  }

  @override
  SearchCategoryTemplatesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SearchCategoryTemplatesViewModel();
}
