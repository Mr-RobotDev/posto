import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:posto/ui/common/ui_helpers.dart';
import 'package:posto/ui/dumb_widgets/shimmer_image.dart';
import 'package:posto/ui/views/create_post/draggable_text_widget.dart';
import 'package:stacked/stacked.dart';
import 'package:widgets_to_image/widgets_to_image.dart';

import 'create_post_viewmodel.dart';

class CreatePostView extends StackedView<CreatePostViewModel> {
  const CreatePostView({Key? key, this.imageUrl, this.image}) : super(key: key);

  final String? imageUrl;
  final File? image;

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
          PlatformIconButton(
            onPressed: viewModel.downloadBusy
                ? null
                : () => viewModel.download(context),
            icon: Icon(
              PlatformIcons(context).cloudDownload,
            ),
          ),
          PlatformIconButton(
            onPressed: viewModel.shareBusy ? null : viewModel.share,
            icon: Icon(
              PlatformIcons(context).share,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: SizedBox(
              height: height * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  WidgetsToImage(
                    controller: viewModel.controller,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: viewModel.aspectRatio >= 1
                          ? imageWidth
                          : imageWidth * viewModel.aspectRatio,
                      height: viewModel.aspectRatio <= 1
                          ? imageWidth
                          : imageWidth / viewModel.aspectRatio,
                      child: Stack(
                        children: [
                          GestureDetector(
                              onTap: () => viewModel.fetchText(context),
                              child: imageUrl != null
                                  ? ShimmerImage(
                                      url: imageUrl!,
                                      height: double.infinity,
                                      width: double.infinity,
                                      radius: 0,
                                    )
                                  : Image.file(
                                      image!,
                                      height: double.infinity,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    )),
                          ...viewModel.texts.map(
                            (e) => DraggableTextWidget(
                              id: DateTime.now().millisecondsSinceEpoch,
                              child: e,
                              onPress: () {
                                viewModel.editText(context, e);
                              },
                              onLongPress: () {
                                viewModel.removeText(context, e);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
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
                                    color:
                                        viewModel.aspectRatio == e.aspectRatio
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
                                        color: viewModel.aspectRatio ==
                                                e.aspectRatio
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
                ],
              ),
            ),
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
