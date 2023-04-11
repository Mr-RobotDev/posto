import 'dart:io';

import 'package:flutter/services.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
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
    if (Platform.isIOS) {
      final PermissionStatus status = await Permission.photos.status;
      if (status.isGranted) {
        return await _pickFile(source);
      } else if (status.isDenied) {
        final PermissionStatus status = await Permission.photos.request();
        if (status.isGranted) {
          return await _pickFile(source);
        } else {
          return null;
        }
      } else {
        await openAppSettings();
        return null;
      }
    }
    else {
      return await _pickFile(source);
    }
  }

  Future<XFile?> _pickImageFromCamera(ImageSource source) async {
    if (Platform.isIOS) {
      final PermissionStatus status = await Permission.camera.status;
      if (status.isGranted) {
        return await _pickFile(source);
      } else if (status.isDenied) {
        final PermissionStatus status = await Permission.camera.request();
        if (status.isGranted) {
          return await _pickFile(source);
        } else {
          return null;
        }
      } else {
        await openAppSettings();
        return null;
      }
    } else {
      return await _pickFile(source);
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

  Future<bool> saveImage(Uint8List? imageBytes) async {
    if (Platform.isIOS) {
      final PermissionStatus status = await Permission.photos.status;
      if (status.isGranted) {
        await save(imageBytes);
        return true;
      } else if (status.isDenied) {
        final PermissionStatus status = await Permission.photos.request();
        if (status.isGranted) {
          await save(imageBytes);
          return true;
        }
        return false;
      } else {
        await openAppSettings();
        return false;
      }
    } else {
      await save(imageBytes);
      return true;
    }
  }

  Future<void> save(Uint8List? imageBytes) async {
    await ImageGallerySaver.saveImage(
      imageBytes!,
      quality: 100,
    );
  }
}
