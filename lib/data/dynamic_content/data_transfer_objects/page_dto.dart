import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sc_navigating_dynamic_content/domain/dynamic_content/page.dart';

part 'page_dto.freezed.dart';
part 'page_dto.g.dart';

@freezed
class PageDto with _$PageDto {
  const factory PageDto({
    required String id,
    required String title,
    required String itemId,
  }) = _PageDto;

  const PageDto._();

  factory PageDto.fromJson(Map<String, dynamic> json) =>
      _$PageDtoFromJson(json);

  Page toDomain() => Page(
        id: id,
        title: title,
        itemId: itemId,
      );
}
