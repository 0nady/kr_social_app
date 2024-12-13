// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_preview_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostPreviewDtoImpl _$$PostPreviewDtoImplFromJson(Map<String, dynamic> json) =>
    _$PostPreviewDtoImpl(
      id: json['id'] as String? ?? '',
      text: json['text'] as String? ?? '',
      image: json['image'] as String? ?? '',
      likes: json['likes'] as num? ?? 0,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      publishDate: json['publishDate'] as String? ?? '',
      owner: json['owner'] == null
          ? const UserPreviewDto()
          : UserPreviewDto.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PostPreviewDtoImplToJson(
        _$PostPreviewDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'image': instance.image,
      'likes': instance.likes,
      'tags': instance.tags,
      'publishDate': instance.publishDate,
      'owner': instance.owner,
    };
