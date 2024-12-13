import 'package:social/data/sources/post_data_source/mappers/post_preview_mapper.dart';
import 'package:social/data/sources/post_data_source/models/response_dto.dart';
import 'package:social/domain/models/pager.dart';
import 'package:social/domain/models/post_preview.dart';

extension ResponseMapper on ResponseDto {
  Pager<PostPreview> toEntity() {
    return Pager(
      data: data.map((e) => e.toEntity()).toList(growable: false),
      total: total,
      page: page,
      limit: limit,
    );
  }
}
