import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sc_navigating_dynamic_content/data/dynamic_content/data_transfer_objects/item_dto.dart';
import 'package:sc_navigating_dynamic_content/data/dynamic_content/data_transfer_objects/page_dto.dart';
import 'package:sc_navigating_dynamic_content/domain/dynamic_content/dynamic_content.dart';

part 'dynamic_content_dto.freezed.dart';
part 'dynamic_content_dto.g.dart';

@freezed
class DynamicContentDto with _$DynamicContentDto {
  const factory DynamicContentDto({
    required String id,
    required List<PageDto> pages,
     required List<ItemDto> items,
  }) = _DynamicContentDto;

  const DynamicContentDto._();

  factory DynamicContentDto.fromJson(Map<String, dynamic> json) =>
      _$DynamicContentDtoFromJson(json);

  DynamicContent toDomain() => DynamicContent(
        id: id,
        pages: [for (final pageDto in pages) pageDto.toDomain()],
        items: [for (final itemDto in items) itemDto.toDomain()],
      );
}
