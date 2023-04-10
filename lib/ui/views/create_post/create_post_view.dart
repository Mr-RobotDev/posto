import 'package:flutter/cupertino.dart';
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

    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text(
          AppLocalizations.of(context)!.createPost,
        ),
        trailingActions: [
          viewModel.isBusy
              ? const CircularProgressIndicator.adaptive()
              : PlatformIconButton(
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
              const Spacer(
                flex: 1,
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: viewModel.aspectRatio >= 1
                    ? imageWidth
                    : imageWidth * viewModel.aspectRatio,
                height: viewModel.aspectRatio <= 1
                    ? imageWidth
                    : imageWidth / viewModel.aspectRatio,
                child: ShimmerImage(
                  url: imageUrl,
                  radius: 0,
                ),
              ),
              const Spacer(
                flex: 1,
              ),
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
                              color: viewModel.aspectRatio == e.aspectRatio
                                  ? CupertinoColors.white
                                  : CupertinoColors.darkBackgroundGray,
                              border: Border.all(
                                color: viewModel.aspectRatio == e.aspectRatio
                                    ? CupertinoColors.darkBackgroundGray
                                    : Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                e.icon != null
                                    ? Icon(
                                        e.icon,
                                        color: viewModel.aspectRatio ==
                                                e.aspectRatio
                                            ? Colors.black
                                            : Colors.white,
                                      )
                                    : const SizedBox.shrink(),
                                Text(
                                  e.text,
                                  style: TextStyle(
                                    color:
                                        viewModel.aspectRatio == e.aspectRatio
                                            ? Colors.black
                                            : Colors.white,
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
              verticalSpaceMedium,
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
