import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_model.freezed.dart';

@freezed
class UploadModel with _$UploadModel {
  const factory UploadModel({
    required String path,
    required bool onMove,
    required bool onAccept,
    required Offset dropPosition,
  }) = _UploadModel;
}
