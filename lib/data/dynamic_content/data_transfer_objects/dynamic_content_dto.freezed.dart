// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dynamic_content_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DynamicContentDto _$DynamicContentDtoFromJson(Map<String, dynamic> json) {
  return _DynamicContentDto.fromJson(json);
}

/// @nodoc
mixin _$DynamicContentDto {
  String get id => throw _privateConstructorUsedError;
  List<PageDto> get pages => throw _privateConstructorUsedError;
  List<ItemDto> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DynamicContentDtoCopyWith<DynamicContentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicContentDtoCopyWith<$Res> {
  factory $DynamicContentDtoCopyWith(
          DynamicContentDto value, $Res Function(DynamicContentDto) then) =
      _$DynamicContentDtoCopyWithImpl<$Res>;
  $Res call({String id, List<PageDto> pages, List<ItemDto> items});
}

/// @nodoc
class _$DynamicContentDtoCopyWithImpl<$Res>
    implements $DynamicContentDtoCopyWith<$Res> {
  _$DynamicContentDtoCopyWithImpl(this._value, this._then);

  final DynamicContentDto _value;
  // ignore: unused_field
  final $Res Function(DynamicContentDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? pages = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<PageDto>,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemDto>,
    ));
  }
}

/// @nodoc
abstract class _$$_DynamicContentDtoCopyWith<$Res>
    implements $DynamicContentDtoCopyWith<$Res> {
  factory _$$_DynamicContentDtoCopyWith(_$_DynamicContentDto value,
          $Res Function(_$_DynamicContentDto) then) =
      __$$_DynamicContentDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, List<PageDto> pages, List<ItemDto> items});
}

/// @nodoc
class __$$_DynamicContentDtoCopyWithImpl<$Res>
    extends _$DynamicContentDtoCopyWithImpl<$Res>
    implements _$$_DynamicContentDtoCopyWith<$Res> {
  __$$_DynamicContentDtoCopyWithImpl(
      _$_DynamicContentDto _value, $Res Function(_$_DynamicContentDto) _then)
      : super(_value, (v) => _then(v as _$_DynamicContentDto));

  @override
  _$_DynamicContentDto get _value => super._value as _$_DynamicContentDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? pages = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_DynamicContentDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pages: pages == freezed
          ? _value._pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<PageDto>,
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DynamicContentDto extends _DynamicContentDto {
  const _$_DynamicContentDto(
      {required this.id,
      required final List<PageDto> pages,
      required final List<ItemDto> items})
      : _pages = pages,
        _items = items,
        super._();

  factory _$_DynamicContentDto.fromJson(Map<String, dynamic> json) =>
      _$$_DynamicContentDtoFromJson(json);

  @override
  final String id;
  final List<PageDto> _pages;
  @override
  List<PageDto> get pages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pages);
  }

  final List<ItemDto> _items;
  @override
  List<ItemDto> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'DynamicContentDto(id: $id, pages: $pages, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DynamicContentDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other._pages, _pages) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_pages),
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$_DynamicContentDtoCopyWith<_$_DynamicContentDto> get copyWith =>
      __$$_DynamicContentDtoCopyWithImpl<_$_DynamicContentDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DynamicContentDtoToJson(
      this,
    );
  }
}

abstract class _DynamicContentDto extends DynamicContentDto {
  const factory _DynamicContentDto(
      {required final String id,
      required final List<PageDto> pages,
      required final List<ItemDto> items}) = _$_DynamicContentDto;
  const _DynamicContentDto._() : super._();

  factory _DynamicContentDto.fromJson(Map<String, dynamic> json) =
      _$_DynamicContentDto.fromJson;

  @override
  String get id;
  @override
  List<PageDto> get pages;
  @override
  List<ItemDto> get items;
  @override
  @JsonKey(ignore: true)
  _$$_DynamicContentDtoCopyWith<_$_DynamicContentDto> get copyWith =>
      throw _privateConstructorUsedError;
}
