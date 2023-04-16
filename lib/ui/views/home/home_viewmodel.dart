import 'dart:io';

import 'package:posto/app/app.bottomsheets.dart';
import 'package:posto/app/app.locator.dart';
import 'package:posto/app/app.router.dart';
import 'package:posto/services/media_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends IndexTrackingViewModel {
  final _navigationService = locator<NavigationService>();
  final _mediaService = locator<MediaService>();
  final _bottomSheetService = locator<BottomSheetService>();

  File? _image;
  File? get image => _image;

  void showGalleryCameraSheet() async {
    final SheetResponse<dynamic>? result =
        await _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.galleryCamera,
    );
    if (result != null && result.confirmed) {
      final file = await _mediaService.pickImage(result.data);
      if (file != null) {
        _image = File(file.path);
        _navigationService.navigateToCreatePostView(image: _image);
      }
    }
  }
}
