import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meme_model.freezed.dart';

part 'meme_model.g.dart';

@freezed
class Meme with _$Meme {
  const factory Meme({
    required String? id,
    required String? name,
    required String? url,
    required int? width,
    required int? height,
    required int? boxCount,
    required int? captions,
  }) = _Meme;

  factory Meme.fromJson(Map<String, Object?> json) => _$MemeFromJson(json);
}
