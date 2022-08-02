import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sc_navigating_dynamic_content/application/dynamic_content/dynamic_content_provider.dart';
import 'package:sc_navigating_dynamic_content/domain/dynamic_content/item.dart';

/// Provides [Item] with given id
///
/// Throws [StateError] if single item with id is not found in [dynamicContentProvider]
final itemProvider =
    FutureProvider.autoDispose.family<Item, String>((ref, id) async {
  final dynamicContent = await ref.watch(dynamicContentProvider.future);
  return dynamicContent.items.singleWhere((item) => item.id == id);
});
