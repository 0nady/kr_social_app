// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDtoImpl _$$ResponseDtoImplFromJson(Map<String, dynamic> json) =>
    _$ResponseDtoImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => PostPreviewDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      total: (json['total'] as num?)?.toInt() ?? 0,
      page: (json['page'] as num?)?.toInt() ?? 0,
      limit: (json['limit'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ResponseDtoImplToJson(_$ResponseDtoImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
    };
