// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_and_share_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SaveAndShare {
  bool get isSaving => throw _privateConstructorUsedError;
  Uint8List get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SaveAndShareCopyWith<SaveAndShare> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveAndShareCopyWith<$Res> {
  factory $SaveAndShareCopyWith(
          SaveAndShare value, $Res Function(SaveAndShare) then) =
      _$SaveAndShareCopyWithImpl<$Res, SaveAndShare>;
  @useResult
  $Res call({bool isSaving, Uint8List image});
}

/// @nodoc
class _$SaveAndShareCopyWithImpl<$Res, $Val extends SaveAndShare>
    implements $SaveAndShareCopyWith<$Res> {
  _$SaveAndShareCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSaving = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SaveAndShareCopyWith<$Res>
    implements $SaveAndShareCopyWith<$Res> {
  factory _$$_SaveAndShareCopyWith(
          _$_SaveAndShare value, $Res Function(_$_SaveAndShare) then) =
      __$$_SaveAndShareCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSaving, Uint8List image});
}

/// @nodoc
class __$$_SaveAndShareCopyWithImpl<$Res>
    extends _$SaveAndShareCopyWithImpl<$Res, _$_SaveAndShare>
    implements _$$_SaveAndShareCopyWith<$Res> {
  __$$_SaveAndShareCopyWithImpl(
      _$_SaveAndShare _value, $Res Function(_$_SaveAndShare) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSaving = null,
    Object? image = null,
  }) {
    return _then(_$_SaveAndShare(
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$_SaveAndShare with DiagnosticableTreeMixin implements _SaveAndShare {
  const _$_SaveAndShare({required this.isSaving, required this.image});

  @override
  final bool isSaving;
  @override
  final Uint8List image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SaveAndShare(isSaving: $isSaving, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SaveAndShare'))
      ..add(DiagnosticsProperty('isSaving', isSaving))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveAndShare &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isSaving, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveAndShareCopyWith<_$_SaveAndShare> get copyWith =>
      __$$_SaveAndShareCopyWithImpl<_$_SaveAndShare>(this, _$identity);
}

abstract class _SaveAndShare implements SaveAndShare {
  const factory _SaveAndShare(
      {required final bool isSaving,
      required final Uint8List image}) = _$_SaveAndShare;

  @override
  bool get isSaving;
  @override
  Uint8List get image;
  @override
  @JsonKey(ignore: true)
  _$$_SaveAndShareCopyWith<_$_SaveAndShare> get copyWith =>
      throw _privateConstructorUsedError;
}
