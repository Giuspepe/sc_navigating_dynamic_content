import 'package:freezed_annotation/freezed_annotation.dart';

part 'item.freezed.dart';

@freezed
class Item with _$Item {
  const factory Item({
    required String id,
    required String title,
    required String imageUrl,
    required String body,
    required String source,
  }) = _Item;
}
