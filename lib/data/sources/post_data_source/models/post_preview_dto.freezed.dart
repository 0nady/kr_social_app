// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_preview_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostPreviewDto _$PostPreviewDtoFromJson(Map<String, dynamic> json) {
  return _PostPreviewDto.fromJson(json);
}

/// @nodoc
mixin _$PostPreviewDto {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  num get likes => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String get publishDate => throw _privateConstructorUsedError;
  UserPreviewDto get owner => throw _privateConstructorUsedError;

  /// Serializes this PostPreviewDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostPreviewDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostPreviewDtoCopyWith<PostPreviewDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostPreviewDtoCopyWith<$Res> {
  factory $PostPreviewDtoCopyWith(
          PostPreviewDto value, $Res Function(PostPreviewDto) then) =
      _$PostPreviewDtoCopyWithImpl<$Res, PostPreviewDto>;
  @useResult
  $Res call(
      {String id,
      String text,
      String image,
      num likes,
      List<String> tags,
      String publishDate,
      UserPreviewDto owner});

  $UserPreviewDtoCopyWith<$Res> get owner;
}

/// @nodoc
class _$PostPreviewDtoCopyWithImpl<$Res, $Val extends PostPreviewDto>
    implements $PostPreviewDtoCopyWith<$Res> {
  _$PostPreviewDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostPreviewDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? image = null,
    Object? likes = null,
    Object? tags = null,
    Object? publishDate = null,
    Object? owner = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as num,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      publishDate: null == publishDate
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserPreviewDto,
    ) as $Val);
  }

  /// Create a copy of PostPreviewDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserPreviewDtoCopyWith<$Res> get owner {
    return $UserPreviewDtoCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostPreviewDtoImplCopyWith<$Res>
    implements $PostPreviewDtoCopyWith<$Res> {
  factory _$$PostPreviewDtoImplCopyWith(_$PostPreviewDtoImpl value,
          $Res Function(_$PostPreviewDtoImpl) then) =
      __$$PostPreviewDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String text,
      String image,
      num likes,
      List<String> tags,
      String publishDate,
      UserPreviewDto owner});

  @override
  $UserPreviewDtoCopyWith<$Res> get owner;
}

/// @nodoc
class __$$PostPreviewDtoImplCopyWithImpl<$Res>
    extends _$PostPreviewDtoCopyWithImpl<$Res, _$PostPreviewDtoImpl>
    implements _$$PostPreviewDtoImplCopyWith<$Res> {
  __$$PostPreviewDtoImplCopyWithImpl(
      _$PostPreviewDtoImpl _value, $Res Function(_$PostPreviewDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostPreviewDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? image = null,
    Object? likes = null,
    Object? tags = null,
    Object? publishDate = null,
    Object? owner = null,
  }) {
    return _then(_$PostPreviewDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as num,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      publishDate: null == publishDate
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserPreviewDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostPreviewDtoImpl implements _PostPreviewDto {
  const _$PostPreviewDtoImpl(
      {this.id = '',
      this.text = '',
      this.image = '',
      this.likes = 0,
      final List<String> tags = const [],
      this.publishDate = '',
      this.owner = const UserPreviewDto()})
      : _tags = tags;

  factory _$PostPreviewDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostPreviewDtoImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String text;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final num likes;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @JsonKey()
  final String publishDate;
  @override
  @JsonKey()
  final UserPreviewDto owner;

  @override
  String toString() {
    return 'PostPreviewDto(id: $id, text: $text, image: $image, likes: $likes, tags: $tags, publishDate: $publishDate, owner: $owner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostPreviewDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.publishDate, publishDate) ||
                other.publishDate == publishDate) &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, text, image, likes,
      const DeepCollectionEquality().hash(_tags), publishDate, owner);

  /// Create a copy of PostPreviewDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostPreviewDtoImplCopyWith<_$PostPreviewDtoImpl> get copyWith =>
      __$$PostPreviewDtoImplCopyWithImpl<_$PostPreviewDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostPreviewDtoImplToJson(
      this,
    );
  }
}

abstract class _PostPreviewDto implements PostPreviewDto {
  const factory _PostPreviewDto(
      {final String id,
      final String text,
      final String image,
      final num likes,
      final List<String> tags,
      final String publishDate,
      final UserPreviewDto owner}) = _$PostPreviewDtoImpl;

  factory _PostPreviewDto.fromJson(Map<String, dynamic> json) =
      _$PostPreviewDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get text;
  @override
  String get image;
  @override
  num get likes;
  @override
  List<String> get tags;
  @override
  String get publishDate;
  @override
  UserPreviewDto get owner;

  /// Create a copy of PostPreviewDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostPreviewDtoImplCopyWith<_$PostPreviewDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
