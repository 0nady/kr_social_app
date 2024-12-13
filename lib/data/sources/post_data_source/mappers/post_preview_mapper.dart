import 'package:social/data/sources/post_data_source/mappers/user_preview_mapper.dart';
import 'package:social/data/sources/post_data_source/models/post_preview_dto.dart';
import 'package:social/domain/models/post_preview.dart';

extension PostPreviewMapper on PostPreviewDto {
  PostPreview toEntity() {
    return PostPreview(
      id: id,
      text: text,
      image: image,
      likes: likes.toInt(),
      tags: tags,
      publishDate: DateTime.tryParse(publishDate) ?? DateTime.now(),
      owner: owner.toEntity(),
    );
  }
}
