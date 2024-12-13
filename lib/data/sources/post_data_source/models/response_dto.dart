import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social/data/sources/post_data_source/models/post_preview_dto.dart';

part 'response_dto.freezed.dart';

part 'response_dto.g.dart';

@freezed
class ResponseDto with _$ResponseDto {
  const factory ResponseDto({
    @Default([]) List<PostPreviewDto> data,
    @Default(0) int total,
    @Default(0) int page,
    @Default(0) int limit,
  }) = _ResponseDto;

  factory ResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ResponseDtoFromJson(json);
}
