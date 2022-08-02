// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemDto _$ItemDtoFromJson(Map<String, dynamic> json) {
  return _ItemDto.fromJson(json);
}

/// @nodoc
mixin _$ItemDto {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemDtoCopyWith<ItemDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDtoCopyWith<$Res> {
  factory $ItemDtoCopyWith(ItemDto value, $Res Function(ItemDto) then) =
      _$ItemDtoCopyWithImpl<$Res>;
  $Res call(
      {String id, String title, String imageUrl, String body, String source});
}

/// @nodoc
class _$ItemDtoCopyWithImpl<$Res> implements $ItemDtoCopyWith<$Res> {
  _$ItemDtoCopyWithImpl(this._value, this._then);

  final ItemDto _value;
  // ignore: unused_field
  final $Res Function(ItemDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? body = freezed,
    Object? source = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ItemDtoCopyWith<$Res> implements $ItemDtoCopyWith<$Res> {
  factory _$$_ItemDtoCopyWith(
          _$_ItemDto value, $Res Function(_$_ItemDto) then) =
      __$$_ItemDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, String title, String imageUrl, String body, String source});
}

/// @nodoc
class __$$_ItemDtoCopyWithImpl<$Res> extends _$ItemDtoCopyWithImpl<$Res>
    implements _$$_ItemDtoCopyWith<$Res> {
  __$$_ItemDtoCopyWithImpl(_$_ItemDto _value, $Res Function(_$_ItemDto) _then)
      : super(_value, (v) => _then(v as _$_ItemDto));

  @override
  _$_ItemDto get _value => super._value as _$_ItemDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? body = freezed,
    Object? source = freezed,
  }) {
    return _then(_$_ItemDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemDto extends _ItemDto {
  const _$_ItemDto(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.body,
      required this.source})
      : super._();

  factory _$_ItemDto.fromJson(Map<String, dynamic> json) =>
      _$$_ItemDtoFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String imageUrl;
  @override
  final String body;
  @override
  final String source;

  @override
  String toString() {
    return 'ItemDto(id: $id, title: $title, imageUrl: $imageUrl, body: $body, source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality().equals(other.source, source));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(source));

  @JsonKey(ignore: true)
  @override
  _$$_ItemDtoCopyWith<_$_ItemDto> get copyWith =>
      __$$_ItemDtoCopyWithImpl<_$_ItemDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemDtoToJson(
      this,
    );
  }
}

abstract class _ItemDto extends ItemDto {
  const factory _ItemDto(
      {required final String id,
      required final String title,
      required final String imageUrl,
      required final String body,
      required final String source}) = _$_ItemDto;
  const _ItemDto._() : super._();

  factory _ItemDto.fromJson(Map<String, dynamic> json) = _$_ItemDto.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get imageUrl;
  @override
  String get body;
  @override
  String get source;
  @override
  @JsonKey(ignore: true)
  _$$_ItemDtoCopyWith<_$_ItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}
