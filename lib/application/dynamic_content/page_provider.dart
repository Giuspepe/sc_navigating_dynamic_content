import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sc_navigating_dynamic_content/application/dynamic_content/dynamic_content_provider.dart';
import 'package:sc_navigating_dynamic_content/domain/dynamic_content/page.dart';

/// Provides [Page] with given id
///
/// Throws [StateError] if single page with id is not found in [dynamicContentProvider]
final pageProvider =
    FutureProvider.autoDispose.family<Page, String>((ref, id) async {
  final dynamicContent = await ref.watch(dynamicContentProvider.future);
  return dynamicContent.pages.singleWhere((page) => page.id == id);
});
