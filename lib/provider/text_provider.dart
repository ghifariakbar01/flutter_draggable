import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pentarex/model/text_model.dart';

import 'package:pentarex/model/upload_model.dart';

final textPositionProvider =
    StateNotifierProvider<TextPositionProvider, TextModel>(
        (ref) => TextPositionProvider());

final showTextPick =
    StateProvider.autoDispose.family<void, BuildContext>((ref, context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add Text'),
          content: TextField(
            onChanged: (value) {
              ref.read(textPositionProvider.notifier).onTextPick(value);
            },
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel')),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Ok'))
          ],
        );
      });
});

class TextPositionProvider extends StateNotifier<TextModel> {
  TextPositionProvider()
      : super(const TextModel(
          text: '',
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

  void onTextPick(String text) {
    state = state.copyWith(text: text);
  }
}
