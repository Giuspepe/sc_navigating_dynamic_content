import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sc_navigating_dynamic_content/domain/dynamic_content/item.dart';
import 'package:sc_navigating_dynamic_content/domain/dynamic_content/page.dart';

part 'dynamic_content.freezed.dart';

@freezed
class DynamicContent with _$DynamicContent {
  const factory DynamicContent({
    required String id,
    required List<Page> pages,
    required List<Item> items,
  }) = _DynamicContent;
}
