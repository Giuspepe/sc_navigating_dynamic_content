// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'page_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PageDto _$PageDtoFromJson(Map<String, dynamic> json) {
  return _PageDto.fromJson(json);
}

/// @nodoc
mixin _$PageDto {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageDtoCopyWith<PageDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageDtoCopyWith<$Res> {
  factory $PageDtoCopyWith(PageDto value, $Res Function(PageDto) then) =
      _$PageDtoCopyWithImpl<$Res>;
  $Res call({String id, String title, String itemId});
}

/// @nodoc
class _$PageDtoCopyWithImpl<$Res> implements $PageDtoCopyWith<$Res> {
  _$PageDtoCopyWithImpl(this._value, this._then);

  final PageDto _value;
  // ignore: unused_field
  final $Res Function(PageDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? itemId = freezed,
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
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PageDtoCopyWith<$Res> implements $PageDtoCopyWith<$Res> {
  factory _$$_PageDtoCopyWith(
          _$_PageDto value, $Res Function(_$_PageDto) then) =
      __$$_PageDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, String itemId});
}

/// @nodoc
class __$$_PageDtoCopyWithImpl<$Res> extends _$PageDtoCopyWithImpl<$Res>
    implements _$$_PageDtoCopyWith<$Res> {
  __$$_PageDtoCopyWithImpl(_$_PageDto _value, $Res Function(_$_PageDto) _then)
      : super(_value, (v) => _then(v as _$_PageDto));

  @override
  _$_PageDto get _value => super._value as _$_PageDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? itemId = freezed,
  }) {
    return _then(_$_PageDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PageDto extends _PageDto {
  const _$_PageDto(
      {required this.id, required this.title, required this.itemId})
      : super._();

  factory _$_PageDto.fromJson(Map<String, dynamic> json) =>
      _$$_PageDtoFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String itemId;

  @override
  String toString() {
    return 'PageDto(id: $id, title: $title, itemId: $itemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PageDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.itemId, itemId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(itemId));

  @JsonKey(ignore: true)
  @override
  _$$_PageDtoCopyWith<_$_PageDto> get copyWith =>
      __$$_PageDtoCopyWithImpl<_$_PageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PageDtoToJson(
      this,
    );
  }
}

abstract class _PageDto extends PageDto {
  const factory _PageDto(
      {required final String id,
      required final String title,
      required final String itemId}) = _$_PageDto;
  const _PageDto._() : super._();

  factory _PageDto.fromJson(Map<String, dynamic> json) = _$_PageDto.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get itemId;
  @override
  @JsonKey(ignore: true)
  _$$_PageDtoCopyWith<_$_PageDto> get copyWith =>
      throw _privateConstructorUsedError;
}
