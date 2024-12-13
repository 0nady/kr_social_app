// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseDto _$ResponseDtoFromJson(Map<String, dynamic> json) {
  return _ResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ResponseDto {
  List<PostPreviewDto> get data => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  /// Serializes this ResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseDtoCopyWith<ResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDtoCopyWith<$Res> {
  factory $ResponseDtoCopyWith(
          ResponseDto value, $Res Function(ResponseDto) then) =
      _$ResponseDtoCopyWithImpl<$Res, ResponseDto>;
  @useResult
  $Res call({List<PostPreviewDto> data, int total, int page, int limit});
}

/// @nodoc
class _$ResponseDtoCopyWithImpl<$Res, $Val extends ResponseDto>
    implements $ResponseDtoCopyWith<$Res> {
  _$ResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? total = null,
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PostPreviewDto>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseDtoImplCopyWith<$Res>
    implements $ResponseDtoCopyWith<$Res> {
  factory _$$ResponseDtoImplCopyWith(
          _$ResponseDtoImpl value, $Res Function(_$ResponseDtoImpl) then) =
      __$$ResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PostPreviewDto> data, int total, int page, int limit});
}

/// @nodoc
class __$$ResponseDtoImplCopyWithImpl<$Res>
    extends _$ResponseDtoCopyWithImpl<$Res, _$ResponseDtoImpl>
    implements _$$ResponseDtoImplCopyWith<$Res> {
  __$$ResponseDtoImplCopyWithImpl(
      _$ResponseDtoImpl _value, $Res Function(_$ResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? total = null,
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_$ResponseDtoImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PostPreviewDto>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseDtoImpl implements _ResponseDto {
  const _$ResponseDtoImpl(
      {final List<PostPreviewDto> data = const [],
      this.total = 0,
      this.page = 0,
      this.limit = 0})
      : _data = data;

  factory _$ResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseDtoImplFromJson(json);

  final List<PostPreviewDto> _data;
  @override
  @JsonKey()
  List<PostPreviewDto> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final int total;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'ResponseDto(data: $data, total: $total, page: $page, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDtoImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), total, page, limit);

  /// Create a copy of ResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseDtoImplCopyWith<_$ResponseDtoImpl> get copyWith =>
      __$$ResponseDtoImplCopyWithImpl<_$ResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ResponseDto implements ResponseDto {
  const factory _ResponseDto(
      {final List<PostPreviewDto> data,
      final int total,
      final int page,
      final int limit}) = _$ResponseDtoImpl;

  factory _ResponseDto.fromJson(Map<String, dynamic> json) =
      _$ResponseDtoImpl.fromJson;

  @override
  List<PostPreviewDto> get data;
  @override
  int get total;
  @override
  int get page;
  @override
  int get limit;

  /// Create a copy of ResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseDtoImplCopyWith<_$ResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
