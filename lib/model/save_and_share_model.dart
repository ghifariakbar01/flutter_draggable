import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_and_share_model.freezed.dart';

@freezed
class SaveAndShare with _$SaveAndShare {
  const factory SaveAndShare({
    required bool isSaving,
    required Uint8List image,
  }) = _SaveAndShare;
}
