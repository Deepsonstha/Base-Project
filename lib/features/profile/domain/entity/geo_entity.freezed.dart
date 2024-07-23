// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geo_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeoEntity _$GeoEntityFromJson(Map<String, dynamic> json) {
  return _GeoEntity.fromJson(json);
}

/// @nodoc
mixin _$GeoEntity {
  String? get lat => throw _privateConstructorUsedError;
  String? get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoEntityCopyWith<GeoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoEntityCopyWith<$Res> {
  factory $GeoEntityCopyWith(GeoEntity value, $Res Function(GeoEntity) then) =
      _$GeoEntityCopyWithImpl<$Res, GeoEntity>;
  @useResult
  $Res call({String? lat, String? lng});
}

/// @nodoc
class _$GeoEntityCopyWithImpl<$Res, $Val extends GeoEntity>
    implements $GeoEntityCopyWith<$Res> {
  _$GeoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_value.copyWith(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeoEntityImplCopyWith<$Res>
    implements $GeoEntityCopyWith<$Res> {
  factory _$$GeoEntityImplCopyWith(
          _$GeoEntityImpl value, $Res Function(_$GeoEntityImpl) then) =
      __$$GeoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? lat, String? lng});
}

/// @nodoc
class __$$GeoEntityImplCopyWithImpl<$Res>
    extends _$GeoEntityCopyWithImpl<$Res, _$GeoEntityImpl>
    implements _$$GeoEntityImplCopyWith<$Res> {
  __$$GeoEntityImplCopyWithImpl(
      _$GeoEntityImpl _value, $Res Function(_$GeoEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_$GeoEntityImpl(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeoEntityImpl implements _GeoEntity {
  const _$GeoEntityImpl({this.lat, this.lng});

  factory _$GeoEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeoEntityImplFromJson(json);

  @override
  final String? lat;
  @override
  final String? lng;

  @override
  String toString() {
    return 'GeoEntity(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeoEntityImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeoEntityImplCopyWith<_$GeoEntityImpl> get copyWith =>
      __$$GeoEntityImplCopyWithImpl<_$GeoEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeoEntityImplToJson(
      this,
    );
  }
}

abstract class _GeoEntity implements GeoEntity {
  const factory _GeoEntity({final String? lat, final String? lng}) =
      _$GeoEntityImpl;

  factory _GeoEntity.fromJson(Map<String, dynamic> json) =
      _$GeoEntityImpl.fromJson;

  @override
  String? get lat;
  @override
  String? get lng;
  @override
  @JsonKey(ignore: true)
  _$$GeoEntityImplCopyWith<_$GeoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
