// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompanyEntity _$CompanyEntityFromJson(Map<String, dynamic> json) {
  return _CompanyEntity.fromJson(json);
}

/// @nodoc
mixin _$CompanyEntity {
  String? get name => throw _privateConstructorUsedError;
  String? get catchPhrase => throw _privateConstructorUsedError;
  String? get bs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyEntityCopyWith<CompanyEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyEntityCopyWith<$Res> {
  factory $CompanyEntityCopyWith(
          CompanyEntity value, $Res Function(CompanyEntity) then) =
      _$CompanyEntityCopyWithImpl<$Res, CompanyEntity>;
  @useResult
  $Res call({String? name, String? catchPhrase, String? bs});
}

/// @nodoc
class _$CompanyEntityCopyWithImpl<$Res, $Val extends CompanyEntity>
    implements $CompanyEntityCopyWith<$Res> {
  _$CompanyEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? catchPhrase = freezed,
    Object? bs = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      catchPhrase: freezed == catchPhrase
          ? _value.catchPhrase
          : catchPhrase // ignore: cast_nullable_to_non_nullable
              as String?,
      bs: freezed == bs
          ? _value.bs
          : bs // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyEntityImplCopyWith<$Res>
    implements $CompanyEntityCopyWith<$Res> {
  factory _$$CompanyEntityImplCopyWith(
          _$CompanyEntityImpl value, $Res Function(_$CompanyEntityImpl) then) =
      __$$CompanyEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? catchPhrase, String? bs});
}

/// @nodoc
class __$$CompanyEntityImplCopyWithImpl<$Res>
    extends _$CompanyEntityCopyWithImpl<$Res, _$CompanyEntityImpl>
    implements _$$CompanyEntityImplCopyWith<$Res> {
  __$$CompanyEntityImplCopyWithImpl(
      _$CompanyEntityImpl _value, $Res Function(_$CompanyEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? catchPhrase = freezed,
    Object? bs = freezed,
  }) {
    return _then(_$CompanyEntityImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      catchPhrase: freezed == catchPhrase
          ? _value.catchPhrase
          : catchPhrase // ignore: cast_nullable_to_non_nullable
              as String?,
      bs: freezed == bs
          ? _value.bs
          : bs // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyEntityImpl implements _CompanyEntity {
  const _$CompanyEntityImpl({this.name, this.catchPhrase, this.bs});

  factory _$CompanyEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyEntityImplFromJson(json);

  @override
  final String? name;
  @override
  final String? catchPhrase;
  @override
  final String? bs;

  @override
  String toString() {
    return 'CompanyEntity(name: $name, catchPhrase: $catchPhrase, bs: $bs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.catchPhrase, catchPhrase) ||
                other.catchPhrase == catchPhrase) &&
            (identical(other.bs, bs) || other.bs == bs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, catchPhrase, bs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyEntityImplCopyWith<_$CompanyEntityImpl> get copyWith =>
      __$$CompanyEntityImplCopyWithImpl<_$CompanyEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyEntityImplToJson(
      this,
    );
  }
}

abstract class _CompanyEntity implements CompanyEntity {
  const factory _CompanyEntity(
      {final String? name,
      final String? catchPhrase,
      final String? bs}) = _$CompanyEntityImpl;

  factory _CompanyEntity.fromJson(Map<String, dynamic> json) =
      _$CompanyEntityImpl.fromJson;

  @override
  String? get name;
  @override
  String? get catchPhrase;
  @override
  String? get bs;
  @override
  @JsonKey(ignore: true)
  _$$CompanyEntityImplCopyWith<_$CompanyEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
