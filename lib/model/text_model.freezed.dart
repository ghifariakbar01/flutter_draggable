// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TextModel {
  String get text => throw _privateConstructorUsedError;
  bool get onMove => throw _privateConstructorUsedError;
  bool get onAccept => throw _privateConstructorUsedError;
  Offset get dropPosition => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TextModelCopyWith<TextModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextModelCopyWith<$Res> {
  factory $TextModelCopyWith(TextModel value, $Res Function(TextModel) then) =
      _$TextModelCopyWithImpl<$Res, TextModel>;
  @useResult
  $Res call({String text, bool onMove, bool onAccept, Offset dropPosition});
}

/// @nodoc
class _$TextModelCopyWithImpl<$Res, $Val extends TextModel>
    implements $TextModelCopyWith<$Res> {
  _$TextModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? onMove = null,
    Object? onAccept = null,
    Object? dropPosition = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      onMove: null == onMove
          ? _value.onMove
          : onMove // ignore: cast_nullable_to_non_nullable
              as bool,
      onAccept: null == onAccept
          ? _value.onAccept
          : onAccept // ignore: cast_nullable_to_non_nullable
              as bool,
      dropPosition: null == dropPosition
          ? _value.dropPosition
          : dropPosition // ignore: cast_nullable_to_non_nullable
              as Offset,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TextModelCopyWith<$Res> implements $TextModelCopyWith<$Res> {
  factory _$$_TextModelCopyWith(
          _$_TextModel value, $Res Function(_$_TextModel) then) =
      __$$_TextModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, bool onMove, bool onAccept, Offset dropPosition});
}

/// @nodoc
class __$$_TextModelCopyWithImpl<$Res>
    extends _$TextModelCopyWithImpl<$Res, _$_TextModel>
    implements _$$_TextModelCopyWith<$Res> {
  __$$_TextModelCopyWithImpl(
      _$_TextModel _value, $Res Function(_$_TextModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? onMove = null,
    Object? onAccept = null,
    Object? dropPosition = null,
  }) {
    return _then(_$_TextModel(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      onMove: null == onMove
          ? _value.onMove
          : onMove // ignore: cast_nullable_to_non_nullable
              as bool,
      onAccept: null == onAccept
          ? _value.onAccept
          : onAccept // ignore: cast_nullable_to_non_nullable
              as bool,
      dropPosition: null == dropPosition
          ? _value.dropPosition
          : dropPosition // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc

class _$_TextModel implements _TextModel {
  const _$_TextModel(
      {required this.text,
      required this.onMove,
      required this.onAccept,
      required this.dropPosition});

  @override
  final String text;
  @override
  final bool onMove;
  @override
  final bool onAccept;
  @override
  final Offset dropPosition;

  @override
  String toString() {
    return 'TextModel(text: $text, onMove: $onMove, onAccept: $onAccept, dropPosition: $dropPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextModel &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.onMove, onMove) || other.onMove == onMove) &&
            (identical(other.onAccept, onAccept) ||
                other.onAccept == onAccept) &&
            (identical(other.dropPosition, dropPosition) ||
                other.dropPosition == dropPosition));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, text, onMove, onAccept, dropPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TextModelCopyWith<_$_TextModel> get copyWith =>
      __$$_TextModelCopyWithImpl<_$_TextModel>(this, _$identity);
}

abstract class _TextModel implements TextModel {
  const factory _TextModel(
      {required final String text,
      required final bool onMove,
      required final bool onAccept,
      required final Offset dropPosition}) = _$_TextModel;

  @override
  String get text;
  @override
  bool get onMove;
  @override
  bool get onAccept;
  @override
  Offset get dropPosition;
  @override
  @JsonKey(ignore: true)
  _$$_TextModelCopyWith<_$_TextModel> get copyWith =>
      throw _privateConstructorUsedError;
}
