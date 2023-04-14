// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UploadModel {
  String get path => throw _privateConstructorUsedError;
  bool get onMove => throw _privateConstructorUsedError;
  bool get onAccept => throw _privateConstructorUsedError;
  Offset get dropPosition => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadModelCopyWith<UploadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadModelCopyWith<$Res> {
  factory $UploadModelCopyWith(
          UploadModel value, $Res Function(UploadModel) then) =
      _$UploadModelCopyWithImpl<$Res, UploadModel>;
  @useResult
  $Res call({String path, bool onMove, bool onAccept, Offset dropPosition});
}

/// @nodoc
class _$UploadModelCopyWithImpl<$Res, $Val extends UploadModel>
    implements $UploadModelCopyWith<$Res> {
  _$UploadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? onMove = null,
    Object? onAccept = null,
    Object? dropPosition = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_UploadModelCopyWith<$Res>
    implements $UploadModelCopyWith<$Res> {
  factory _$$_UploadModelCopyWith(
          _$_UploadModel value, $Res Function(_$_UploadModel) then) =
      __$$_UploadModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, bool onMove, bool onAccept, Offset dropPosition});
}

/// @nodoc
class __$$_UploadModelCopyWithImpl<$Res>
    extends _$UploadModelCopyWithImpl<$Res, _$_UploadModel>
    implements _$$_UploadModelCopyWith<$Res> {
  __$$_UploadModelCopyWithImpl(
      _$_UploadModel _value, $Res Function(_$_UploadModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? onMove = null,
    Object? onAccept = null,
    Object? dropPosition = null,
  }) {
    return _then(_$_UploadModel(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
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

class _$_UploadModel implements _UploadModel {
  const _$_UploadModel(
      {required this.path,
      required this.onMove,
      required this.onAccept,
      required this.dropPosition});

  @override
  final String path;
  @override
  final bool onMove;
  @override
  final bool onAccept;
  @override
  final Offset dropPosition;

  @override
  String toString() {
    return 'UploadModel(path: $path, onMove: $onMove, onAccept: $onAccept, dropPosition: $dropPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadModel &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.onMove, onMove) || other.onMove == onMove) &&
            (identical(other.onAccept, onAccept) ||
                other.onAccept == onAccept) &&
            (identical(other.dropPosition, dropPosition) ||
                other.dropPosition == dropPosition));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, path, onMove, onAccept, dropPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UploadModelCopyWith<_$_UploadModel> get copyWith =>
      __$$_UploadModelCopyWithImpl<_$_UploadModel>(this, _$identity);
}

abstract class _UploadModel implements UploadModel {
  const factory _UploadModel(
      {required final String path,
      required final bool onMove,
      required final bool onAccept,
      required final Offset dropPosition}) = _$_UploadModel;

  @override
  String get path;
  @override
  bool get onMove;
  @override
  bool get onAccept;
  @override
  Offset get dropPosition;
  @override
  @JsonKey(ignore: true)
  _$$_UploadModelCopyWith<_$_UploadModel> get copyWith =>
      throw _privateConstructorUsedError;
}
