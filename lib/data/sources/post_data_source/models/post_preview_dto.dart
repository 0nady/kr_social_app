import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social/data/sources/post_data_source/models/user_preview_dto.dart';

part 'post_preview_dto.freezed.dart';

part 'post_preview_dto.g.dart';

@freezed
class PostPreviewDto with _$PostPreviewDto {
  const factory PostPreviewDto({
    @Default('') String id,
    @Default('') String text,
    @Default('') String image,
    @Default(0) num likes,
    @Default([]) List<String> tags,
    @Default('') String publishDate,
    @Default(UserPreviewDto()) UserPreviewDto owner,
  }) = _PostPreviewDto;

  factory PostPreviewDto.fromJson(Map<String, dynamic> json) =>
      _$PostPreviewDtoFromJson(json);
}
