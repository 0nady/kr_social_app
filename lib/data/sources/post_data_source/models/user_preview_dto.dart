import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_preview_dto.freezed.dart';

part 'user_preview_dto.g.dart';

@freezed
class UserPreviewDto with _$UserPreviewDto {
  const factory UserPreviewDto({
    @Default('') String id,
    @Default('') String title,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String picture,
  }) = _UserPreviewDto;

  factory UserPreviewDto.fromJson(Map<String, dynamic> json) =>
      _$UserPreviewDtoFromJson(json);
}
