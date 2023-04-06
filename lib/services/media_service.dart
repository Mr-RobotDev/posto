import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class MediaService {
  Future<XFile?> pickImage(ImageSource source) async {
    if (source == ImageSource.camera) {
      return await _pickImageFromCamera(source);
    } else {
      return await _pickImageFromGallery(source);
    }
  }

  Future<XFile?> _pickImageFromGallery(ImageSource source) async {
    {
      final PermissionStatus status = await Permission.photos.status;
      if (status.isGranted) {
        return _pickFile(source);
      } else if (status.isDenied) {
        final PermissionStatus status = await Permission.photos.request();
        if (status.isGranted) {
          return _pickFile(source);
        } else {
          return null;
        }
      } else if (status.isPermanentlyDenied) {
        await openAppSettings();
        return null;
      } else {
        return null;
      }
    }
  }

  Future<XFile?> _pickImageFromCamera(ImageSource source) async {
    {
      final PermissionStatus status = await Permission.camera.status;
      if (status.isGranted) {
        return _pickFile(source);
      } else if (status.isDenied) {
        final PermissionStatus status = await Permission.camera.request();
        if (status.isGranted) {
          return _pickFile(source);
        } else {
          return null;
        }
      } else if (status.isPermanentlyDenied) {
        await openAppSettings();
        return null;
      } else {
        return null;
      }
    }
  }

  Future<XFile?> _pickFile(ImageSource source) async {
    try {
      final XFile? image = await ImagePicker().pickImage(
        source: source,
        preferredCameraDevice: CameraDevice.rear,
        imageQuality: 100,
      );
      if (image == null) {
        return null;
      }
      return image;
    } on PlatformException {
      return null;
    }
  }
}
