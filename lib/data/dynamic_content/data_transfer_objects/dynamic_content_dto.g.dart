// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_content_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DynamicContentDto _$$_DynamicContentDtoFromJson(Map<String, dynamic> json) =>
    _$_DynamicContentDto(
      id: json['id'] as String,
      pages: (json['pages'] as List<dynamic>)
          .map((e) => PageDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      items: (json['items'] as List<dynamic>)
          .map((e) => ItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DynamicContentDtoToJson(
        _$_DynamicContentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pages': instance.pages,
      'items': instance.items,
    };
