import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:image_picker/image_picker.dart';

import 'package:path_provider/path_provider.dart';
import 'package:pentarex/model/upload_model.dart';

final imageUploadProvider =
    StateNotifierProvider<ImageUploadProvider, UploadModel>(
        (ref) => ImageUploadProvider());

class ImageUploadProvider extends StateNotifier<UploadModel> {
  ImageUploadProvider()
      : super(const UploadModel(
          path: '',
          onMove: false,
          onAccept: false,
          dropPosition: Offset(0, 0),
        ));

  Offset get position => state.dropPosition;

  void setDropPosition(Offset position) {
    state = state.copyWith(dropPosition: position);
  }

  void onAccept(bool onAccept) {
    state = state.copyWith(onAccept: onAccept);
  }

  void onMove(bool onMove) {
    state = state.copyWith(onMove: onMove);
  }

  Future<void> onImgPick(XFile image) async {
    state = state.copyWith(path: image.path, onMove: false);

    // create temp file
    final targetPath = (await getTemporaryDirectory()).path +
        "/images/${DateTime.now().millisecondsSinceEpoch}.jpg";
    final targetFile = File(targetPath);

    if (!await targetFile.exists()) {
      await targetFile.create(recursive: true);
    }

    // write compressed image to temp file
    await targetFile.writeAsBytes(await image.readAsBytes());

    // return if file size not valid
    if (await targetFile.length() < 1) {
      // show message failed to process image
      // makeErrorSb('Failed', 'Failed to process image');
      return;
    }

    // dismiss loading
    print('state is $state');
  }
}
