import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sc_navigating_dynamic_content/application/dynamic_content/dynamic_content_id_provider.dart';
import 'package:sc_navigating_dynamic_content/application/dynamic_content/dynamic_content_repository_provider.dart';
import 'package:sc_navigating_dynamic_content/domain/dynamic_content/dynamic_content.dart';

/// Provides [DynamicContent] with given id
final dynamicContentProvider = FutureProvider.autoDispose<DynamicContent>((ref) async {
  final id = ref.watch(dynamicContentIdProvider);
  final dynamicContentRepository = ref.watch(dynamicContentRepositoryProvider);
  return await dynamicContentRepository.getDynamicContent(id);
});
