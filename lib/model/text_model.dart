import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_model.freezed.dart';

@freezed
class TextModel with _$TextModel {
  const factory TextModel({
    required String text,
    required bool onMove,
    required bool onAccept,
    required Offset dropPosition,
  }) = _TextModel;
}
