import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:image_picker/image_picker.dart';
import 'package:posto/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'gallery_camera_sheet_model.dart';

class GalleryCameraSheet extends StackedView<GalleryCameraSheetModel> {
  final Function(SheetResponse response)? completer;
  final SheetRequest request;
  const GalleryCameraSheet({
    Key? key,
    required this.completer,
    required this.request,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    GalleryCameraSheetModel viewModel,
    Widget? child,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      height: screenHeight(context) * 0.2,
      decoration: BoxDecoration(
        color: isDarkModeNavBarColor(context),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150),
            child: Container(
              height: 5,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
          ListTile(
            onTap: () => completer!(
              SheetResponse(
                confirmed: true,
                data: ImageSource.gallery,
              ),
            ),
            leading: Icon(
              PlatformIcons(context).photoLibrary,
              color: Theme.of(context).colorScheme.secondary,
            ),
            title: Text(
              AppLocalizations.of(context)!.gallery,
              style: TextStyle(
                color: isDarkMode(context) ? Colors.white : Colors.black,
              ),
            ),
          ),
          ListTile(
            onTap: () => completer!(
              SheetResponse(
                confirmed: true,
                data: ImageSource.camera,
              ),
            ),
            leading: Icon(
              PlatformIcons(context).photoCamera,
              color: Theme.of(context).colorScheme.secondary,
            ),
            title: Text(
              AppLocalizations.of(context)!.camera,
              style: TextStyle(
                color: isDarkModeTextColor(context),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  GalleryCameraSheetModel viewModelBuilder(BuildContext context) =>
      GalleryCameraSheetModel();
}
