// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meme_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Meme _$MemeFromJson(Map<String, dynamic> json) {
  return _Meme.fromJson(json);
}

/// @nodoc
mixin _$Meme {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  int? get boxCount => throw _privateConstructorUsedError;
  int? get captions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemeCopyWith<Meme> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemeCopyWith<$Res> {
  factory $MemeCopyWith(Meme value, $Res Function(Meme) then) =
      _$MemeCopyWithImpl<$Res, Meme>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? url,
      int? width,
      int? height,
      int? boxCount,
      int? captions});
}

/// @nodoc
class _$MemeCopyWithImpl<$Res, $Val extends Meme>
    implements $MemeCopyWith<$Res> {
  _$MemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? boxCount = freezed,
    Object? captions = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      boxCount: freezed == boxCount
          ? _value.boxCount
          : boxCount // ignore: cast_nullable_to_non_nullable
              as int?,
      captions: freezed == captions
          ? _value.captions
          : captions // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MemeCopyWith<$Res> implements $MemeCopyWith<$Res> {
  factory _$$_MemeCopyWith(_$_Meme value, $Res Function(_$_Meme) then) =
      __$$_MemeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? url,
      int? width,
      int? height,
      int? boxCount,
      int? captions});
}

/// @nodoc
class __$$_MemeCopyWithImpl<$Res> extends _$MemeCopyWithImpl<$Res, _$_Meme>
    implements _$$_MemeCopyWith<$Res> {
  __$$_MemeCopyWithImpl(_$_Meme _value, $Res Function(_$_Meme) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? boxCount = freezed,
    Object? captions = freezed,
  }) {
    return _then(_$_Meme(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      boxCount: freezed == boxCount
          ? _value.boxCount
          : boxCount // ignore: cast_nullable_to_non_nullable
              as int?,
      captions: freezed == captions
          ? _value.captions
          : captions // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Meme with DiagnosticableTreeMixin implements _Meme {
  const _$_Meme(
      {required this.id,
      required this.name,
      required this.url,
      required this.width,
      required this.height,
      required this.boxCount,
      required this.captions});

  factory _$_Meme.fromJson(Map<String, dynamic> json) => _$$_MemeFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? url;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final int? boxCount;
  @override
  final int? captions;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Meme(id: $id, name: $name, url: $url, width: $width, height: $height, boxCount: $boxCount, captions: $captions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Meme'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('width', width))
      ..add(DiagnosticsProperty('height', height))
      ..add(DiagnosticsProperty('boxCount', boxCount))
      ..add(DiagnosticsProperty('captions', captions));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Meme &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.boxCount, boxCount) ||
                other.boxCount == boxCount) &&
            (identical(other.captions, captions) ||
                other.captions == captions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, url, width, height, boxCount, captions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemeCopyWith<_$_Meme> get copyWith =>
      __$$_MemeCopyWithImpl<_$_Meme>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemeToJson(
      this,
    );
  }
}

abstract class _Meme implements Meme {
  const factory _Meme(
      {required final String? id,
      required final String? name,
      required final String? url,
      required final int? width,
      required final int? height,
      required final int? boxCount,
      required final int? captions}) = _$_Meme;

  factory _Meme.fromJson(Map<String, dynamic> json) = _$_Meme.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get url;
  @override
  int? get width;
  @override
  int? get height;
  @override
  int? get boxCount;
  @override
  int? get captions;
  @override
  @JsonKey(ignore: true)
  _$$_MemeCopyWith<_$_Meme> get copyWith => throw _privateConstructorUsedError;
}
