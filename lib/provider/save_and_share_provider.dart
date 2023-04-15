import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pentarex/model/save_and_share_model.dart';

final saveAndShareNotifierProvider =
    StateNotifierProvider<SaveAndShareNotifierProvider, SaveAndShare>(
        (ref) => SaveAndShareNotifierProvider());

class SaveAndShareNotifierProvider extends StateNotifier<SaveAndShare> {
  SaveAndShareNotifierProvider()
      : super(
            SaveAndShare(isSaving: false, image: Uint8List(0), imagePath: ''));

  bool get isSaving => state.isSaving;
  String get imagePath => state.imagePath;

  void savingMode(bool toSave) {
    state = state.copyWith(isSaving: toSave);
  }

  Future<void> capturePng(GlobalKey globalKey) async {
    final RenderRepaintBoundary boundary =
        globalKey.currentContext!.findRenderObject()! as RenderRepaintBoundary;
    final ui.Image image = await boundary.toImage();
    final ByteData? byteData =
        await image.toByteData(format: ui.ImageByteFormat.png);
    final Uint8List pngBytes = byteData!.buffer.asUint8List();

    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/image.png');

    state = state.copyWith(image: pngBytes, imagePath: file.path);

    await file.writeAsBytes(pngBytes);
    await Fluttertoast.showToast(
        msg: 'Image saved to ${directory.path}/image.png');
  }
}
