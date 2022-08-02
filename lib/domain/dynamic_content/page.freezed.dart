// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Page {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageCopyWith<Page> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageCopyWith<$Res> {
  factory $PageCopyWith(Page value, $Res Function(Page) then) =
      _$PageCopyWithImpl<$Res>;
  $Res call({String id, String title, String itemId});
}

/// @nodoc
class _$PageCopyWithImpl<$Res> implements $PageCopyWith<$Res> {
  _$PageCopyWithImpl(this._value, this._then);

  final Page _value;
  // ignore: unused_field
  final $Res Function(Page) _then;

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
abstract class _$$_PageCopyWith<$Res> implements $PageCopyWith<$Res> {
  factory _$$_PageCopyWith(_$_Page value, $Res Function(_$_Page) then) =
      __$$_PageCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, String itemId});
}

/// @nodoc
class __$$_PageCopyWithImpl<$Res> extends _$PageCopyWithImpl<$Res>
    implements _$$_PageCopyWith<$Res> {
  __$$_PageCopyWithImpl(_$_Page _value, $Res Function(_$_Page) _then)
      : super(_value, (v) => _then(v as _$_Page));

  @override
  _$_Page get _value => super._value as _$_Page;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? itemId = freezed,
  }) {
    return _then(_$_Page(
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

class _$_Page implements _Page {
  const _$_Page({required this.id, required this.title, required this.itemId});

  @override
  final String id;
  @override
  final String title;
  @override
  final String itemId;

  @override
  String toString() {
    return 'Page(id: $id, title: $title, itemId: $itemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Page &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.itemId, itemId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(itemId));

  @JsonKey(ignore: true)
  @override
  _$$_PageCopyWith<_$_Page> get copyWith =>
      __$$_PageCopyWithImpl<_$_Page>(this, _$identity);
}

abstract class _Page implements Page {
  const factory _Page(
      {required final String id,
      required final String title,
      required final String itemId}) = _$_Page;

  @override
  String get id;
  @override
  String get title;
  @override
  String get itemId;
  @override
  @JsonKey(ignore: true)
  _$$_PageCopyWith<_$_Page> get copyWith => throw _privateConstructorUsedError;
}
