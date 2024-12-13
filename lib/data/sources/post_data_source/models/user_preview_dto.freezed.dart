// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_preview_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserPreviewDto _$UserPreviewDtoFromJson(Map<String, dynamic> json) {
  return _UserPreviewDto.fromJson(json);
}

/// @nodoc
mixin _$UserPreviewDto {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;

  /// Serializes this UserPreviewDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserPreviewDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserPreviewDtoCopyWith<UserPreviewDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPreviewDtoCopyWith<$Res> {
  factory $UserPreviewDtoCopyWith(
          UserPreviewDto value, $Res Function(UserPreviewDto) then) =
      _$UserPreviewDtoCopyWithImpl<$Res, UserPreviewDto>;
  @useResult
  $Res call(
      {String id,
      String title,
      String firstName,
      String lastName,
      String picture});
}

/// @nodoc
class _$UserPreviewDtoCopyWithImpl<$Res, $Val extends UserPreviewDto>
    implements $UserPreviewDtoCopyWith<$Res> {
  _$UserPreviewDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPreviewDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? picture = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserPreviewDtoImplCopyWith<$Res>
    implements $UserPreviewDtoCopyWith<$Res> {
  factory _$$UserPreviewDtoImplCopyWith(_$UserPreviewDtoImpl value,
          $Res Function(_$UserPreviewDtoImpl) then) =
      __$$UserPreviewDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String firstName,
      String lastName,
      String picture});
}

/// @nodoc
class __$$UserPreviewDtoImplCopyWithImpl<$Res>
    extends _$UserPreviewDtoCopyWithImpl<$Res, _$UserPreviewDtoImpl>
    implements _$$UserPreviewDtoImplCopyWith<$Res> {
  __$$UserPreviewDtoImplCopyWithImpl(
      _$UserPreviewDtoImpl _value, $Res Function(_$UserPreviewDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPreviewDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? picture = null,
  }) {
    return _then(_$UserPreviewDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserPreviewDtoImpl
    with DiagnosticableTreeMixin
    implements _UserPreviewDto {
  const _$UserPreviewDtoImpl(
      {this.id = '',
      this.title = '',
      this.firstName = '',
      this.lastName = '',
      this.picture = ''});

  factory _$UserPreviewDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPreviewDtoImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String firstName;
  @override
  @JsonKey()
  final String lastName;
  @override
  @JsonKey()
  final String picture;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserPreviewDto(id: $id, title: $title, firstName: $firstName, lastName: $lastName, picture: $picture)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserPreviewDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('picture', picture));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPreviewDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.picture, picture) || other.picture == picture));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, firstName, lastName, picture);

  /// Create a copy of UserPreviewDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPreviewDtoImplCopyWith<_$UserPreviewDtoImpl> get copyWith =>
      __$$UserPreviewDtoImplCopyWithImpl<_$UserPreviewDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPreviewDtoImplToJson(
      this,
    );
  }
}

abstract class _UserPreviewDto implements UserPreviewDto {
  const factory _UserPreviewDto(
      {final String id,
      final String title,
      final String firstName,
      final String lastName,
      final String picture}) = _$UserPreviewDtoImpl;

  factory _UserPreviewDto.fromJson(Map<String, dynamic> json) =
      _$UserPreviewDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get picture;

  /// Create a copy of UserPreviewDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPreviewDtoImplCopyWith<_$UserPreviewDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
