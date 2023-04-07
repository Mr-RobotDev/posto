import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:posto/ui/common/ui_helpers.dart';
import 'package:posto/ui/dumb_widgets/shimmer_image.dart';
import 'package:stacked/stacked.dart';

import 'create_post_viewmodel.dart';

class CreatePostView extends StackedView<CreatePostViewModel> {
  const CreatePostView(this.imageUrl, {Key? key}) : super(key: key);

  final String imageUrl;

  @override
  Widget builder(
    BuildContext context,
    CreatePostViewModel viewModel,
    Widget? child,
  ) {
    final imageWidth = screenWidth(context);
    final height = screenHeight(context);
    final theme = Theme.of(context);

    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text(
          AppLocalizations.of(context)!.createPost,
        ),
        trailingActions: [
          viewModel.isBusy
              ? const CircularProgressIndicator.adaptive()
              : IconButton(
                  onPressed: () {},
                  icon: Icon(
                    PlatformIcons(context).share,
                  ),
                ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ShimmerImage(
                url: imageUrl,
                width: viewModel.aspectRatio >= 1
                    ? imageWidth
                    : imageWidth * viewModel.aspectRatio,
                height: viewModel.aspectRatio <= 1
                    ? imageWidth
                    : imageWidth / viewModel.aspectRatio,
              ),
              verticalSpaceLarge,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: viewModel.aspectRatios
                      .map(
                        (e) => GestureDetector(
                          onTap: () =>
                              viewModel.changeAspectRatio(e.aspectRatio),
                          child: Container(
                            width: height * 0.08 * e.aspectRatio,
                            height: height * 0.08,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.primary.withOpacity(0.1),
                              border: viewModel.aspectRatio == e.aspectRatio
                                  ? Border.all(
                                      color: theme.colorScheme.primary,
                                      width: 2,
                                    )
                                  : null,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                e.icon != null
                                    ? Icon(
                                        e.icon,
                                      )
                                    : const SizedBox.shrink(),
                                Text(
                                  e.text,
                                  style: TextStyle(
                                    color: isDarkMode(context)
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  CreatePostViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CreatePostViewModel();
}
