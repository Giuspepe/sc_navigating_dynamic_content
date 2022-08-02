import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sc_navigating_dynamic_content/data/dynamic_content/data_transfer_objects/dynamic_content_dto.dart';
import 'package:sc_navigating_dynamic_content/domain/dynamic_content/dynamic_content.dart';
import 'package:sc_navigating_dynamic_content/domain/dynamic_content/i_dynamic_content_repository.dart';

@LazySingleton(as: IDynamicContentRepository)
class DynamicContentRepository extends IDynamicContentRepository {
  DynamicContentRepository();

  static const _baseUrl = 'https://simpleclub-coding-challenges.web.app';
  final _dioClient = Dio(BaseOptions(baseUrl: _baseUrl));

  @override
  Future<DynamicContent> getDynamicContent(String id) async {
    final urlEncodedId = Uri.encodeComponent(id);
    final response =
        await _dioClient.get('/navigating-dynamic-content/$urlEncodedId');
    final dynamicContentDto = DynamicContentDto.fromJson({
      ...response.data,
      'id': id,
    });
    final dynamicContent = dynamicContentDto.toDomain();
    return dynamicContent;
  }
}
