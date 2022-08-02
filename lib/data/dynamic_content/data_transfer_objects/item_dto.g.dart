// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemDto _$$_ItemDtoFromJson(Map<String, dynamic> json) => _$_ItemDto(
      id: json['id'] as String,
      title: json['title'] as String,
      imageUrl: json['imageUrl'] as String,
      body: json['body'] as String,
      source: json['source'] as String,
    );

Map<String, dynamic> _$$_ItemDtoToJson(_$_ItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'body': instance.body,
      'source': instance.source,
    };
