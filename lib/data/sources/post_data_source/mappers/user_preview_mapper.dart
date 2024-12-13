import 'package:social/data/sources/post_data_source/models/user_preview_dto.dart';
import 'package:social/domain/models/user_preview.dart';

extension UserPreviewMapper on UserPreviewDto {
  UserPreview toEntity() {
    return UserPreview(
      id: id,
      title: title,
      firstName: firstName,
      lastName: lastName,
      picture: picture,
    );
  }
}
