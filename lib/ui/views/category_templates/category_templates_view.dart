import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:posto/ui/common/ui_helpers.dart';
import 'package:posto/ui/dumb_widgets/shimmer_image.dart';
import 'package:stacked/stacked.dart';

import 'category_templates_viewmodel.dart';

class CategoryTemplatesView extends StackedView<CategoryTemplatesViewModel> {
  const CategoryTemplatesView(this.name, {Key? key}) : super(key: key);

  final String name;

  @override
  Widget builder(
    BuildContext context,
    CategoryTemplatesViewModel viewModel,
    Widget? child,
  ) {
    return PlatformScaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    child: Icon(
                      PlatformIcons(context).leftChevron,
                      color: isDarkModeTextColor(context),
                      size: 24.0,
                    ),
                    onTap: viewModel.back,
                  ),
                  Text(
                    name,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: isDarkModeTextColor(context),
                        ),
                  ),
                ],
              ),
              verticalSpaceSmall,
              viewModel.currentTemplateIndex != null
                  ? GestureDetector(
                      onHorizontalDragEnd: (dragEndDetails) {
                        if (dragEndDetails.primaryVelocity! > 0) {
                          viewModel.nextTemplate(
                            max(viewModel.currentTemplateIndex! - 1, 0),
                          );
                        } else if (dragEndDetails.primaryVelocity! < 0) {
                          viewModel.nextTemplate(
                            min(
                              viewModel.currentTemplateIndex! + 1,
                              viewModel.templates.length - 1,
                            ),
                          );
                        }
                      },
                      child: InteractiveViewer(
                        panEnabled: false,
                        boundaryMargin: const EdgeInsets.all(100),
                        minScale: 0.5,
                        maxScale: 2,
                        child: ShimmerImage(
                          url: viewModel
                              .templates[viewModel.currentTemplateIndex!]
                              .thumbnail,
                          height: screenHeight(context) * 0.6,
                        ),
                      ),
                    )
                  : Container(
                      height: screenHeight(context) * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
              verticalSpaceLarge,
              viewModel.isBusy
                  ? const CircularProgressIndicator.adaptive()
                  : SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (var i = 0; i < viewModel.templates.length; i++)
                            GestureDetector(
                              onTap: () => viewModel.nextTemplate(i),
                              child: Container(
                                width: 84,
                                height: 84,
                                margin: const EdgeInsets.only(right: 10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: viewModel.currentTemplateIndex == i
                                      ? Border.all(
                                          color: isDarkModeTextColor(context),
                                          width: 2.0,
                                        )
                                      : null,
                                ),
                                child: ShimmerImage(
                                  url: viewModel.templates[i].thumbnail,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  CategoryTemplatesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CategoryTemplatesViewModel();

  @override
  void onViewModelReady(CategoryTemplatesViewModel viewModel) {
    viewModel.fetchTemplates(name);
    super.onViewModelReady(viewModel);
  }
}
