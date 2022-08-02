import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sc_navigating_dynamic_content/domain/dynamic_content/i_dynamic_content_repository.dart';
import 'package:sc_navigating_dynamic_content/init_dependency_injection.dart';

final dynamicContentRepositoryProvider =
    Provider((ref) => getIt<IDynamicContentRepository>());
