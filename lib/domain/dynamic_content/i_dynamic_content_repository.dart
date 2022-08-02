
import 'package:sc_navigating_dynamic_content/domain/dynamic_content/dynamic_content.dart';

abstract class IDynamicContentRepository {
  const IDynamicContentRepository();
  
  Future<DynamicContent> getDynamicContent(String id);
}
