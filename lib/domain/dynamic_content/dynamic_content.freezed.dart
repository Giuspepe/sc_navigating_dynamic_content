// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dynamic_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DynamicContent {
  String get id => throw _privateConstructorUsedError;
  List<Page> get pages => throw _privateConstructorUsedError;
  List<Item> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DynamicContentCopyWith<DynamicContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicContentCopyWith<$Res> {
  factory $DynamicContentCopyWith(
          DynamicContent value, $Res Function(DynamicContent) then) =
      _$DynamicContentCopyWithImpl<$Res>;
  $Res call({String id, List<Page> pages, List<Item> items});
}

/// @nodoc
class _$DynamicContentCopyWithImpl<$Res>
    implements $DynamicContentCopyWith<$Res> {
  _$DynamicContentCopyWithImpl(this._value, this._then);

  final DynamicContent _value;
  // ignore: unused_field
  final $Res Function(DynamicContent) _then;

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
              as List<Page>,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc
abstract class _$$_DynamicContentCopyWith<$Res>
    implements $DynamicContentCopyWith<$Res> {
  factory _$$_DynamicContentCopyWith(
          _$_DynamicContent value, $Res Function(_$_DynamicContent) then) =
      __$$_DynamicContentCopyWithImpl<$Res>;
  @override
  $Res call({String id, List<Page> pages, List<Item> items});
}

/// @nodoc
class __$$_DynamicContentCopyWithImpl<$Res>
    extends _$DynamicContentCopyWithImpl<$Res>
    implements _$$_DynamicContentCopyWith<$Res> {
  __$$_DynamicContentCopyWithImpl(
      _$_DynamicContent _value, $Res Function(_$_DynamicContent) _then)
      : super(_value, (v) => _then(v as _$_DynamicContent));

  @override
  _$_DynamicContent get _value => super._value as _$_DynamicContent;

  @override
  $Res call({
    Object? id = freezed,
    Object? pages = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_DynamicContent(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pages: pages == freezed
          ? _value._pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<Page>,
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc

class _$_DynamicContent implements _DynamicContent {
  const _$_DynamicContent(
      {required this.id,
      required final List<Page> pages,
      required final List<Item> items})
      : _pages = pages,
        _items = items;

  @override
  final String id;
  final List<Page> _pages;
  @override
  List<Page> get pages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pages);
  }

  final List<Item> _items;
  @override
  List<Item> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'DynamicContent(id: $id, pages: $pages, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DynamicContent &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other._pages, _pages) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_pages),
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$_DynamicContentCopyWith<_$_DynamicContent> get copyWith =>
      __$$_DynamicContentCopyWithImpl<_$_DynamicContent>(this, _$identity);
}

abstract class _DynamicContent implements DynamicContent {
  const factory _DynamicContent(
      {required final String id,
      required final List<Page> pages,
      required final List<Item> items}) = _$_DynamicContent;

  @override
  String get id;
  @override
  List<Page> get pages;
  @override
  List<Item> get items;
  @override
  @JsonKey(ignore: true)
  _$$_DynamicContentCopyWith<_$_DynamicContent> get copyWith =>
      throw _privateConstructorUsedError;
}
