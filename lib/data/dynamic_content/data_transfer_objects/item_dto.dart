import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sc_navigating_dynamic_content/domain/dynamic_content/item.dart';

part 'item_dto.freezed.dart';
part 'item_dto.g.dart';

@freezed
class ItemDto with _$ItemDto {
  const factory ItemDto({
    required String id,
    required String title,
    required String imageUrl,
    required String body,
    required String source,
  }) = _ItemDto;

  const ItemDto._();

  factory ItemDto.fromJson(Map<String, dynamic> json) =>
      _$ItemDtoFromJson(json);

  Item toDomain() => Item(
        id: id,
        title: title,
        imageUrl: imageUrl,
        body: body,
        source: source,
      );
}
