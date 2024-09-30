// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sse_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SseState {
  String get data => throw _privateConstructorUsedError;

  /// Create a copy of SseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SseStateCopyWith<SseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SseStateCopyWith<$Res> {
  factory $SseStateCopyWith(SseState value, $Res Function(SseState) then) =
      _$SseStateCopyWithImpl<$Res, SseState>;
  @useResult
  $Res call({String data});
}

/// @nodoc
class _$SseStateCopyWithImpl<$Res, $Val extends SseState>
    implements $SseStateCopyWith<$Res> {
  _$SseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SseStateImplCopyWith<$Res>
    implements $SseStateCopyWith<$Res> {
  factory _$$SseStateImplCopyWith(
          _$SseStateImpl value, $Res Function(_$SseStateImpl) then) =
      __$$SseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$SseStateImplCopyWithImpl<$Res>
    extends _$SseStateCopyWithImpl<$Res, _$SseStateImpl>
    implements _$$SseStateImplCopyWith<$Res> {
  __$$SseStateImplCopyWithImpl(
      _$SseStateImpl _value, $Res Function(_$SseStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SseStateImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SseStateImpl implements _SseState {
  const _$SseStateImpl({this.data = ""});

  @override
  @JsonKey()
  final String data;

  @override
  String toString() {
    return 'SseState(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SseStateImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of SseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SseStateImplCopyWith<_$SseStateImpl> get copyWith =>
      __$$SseStateImplCopyWithImpl<_$SseStateImpl>(this, _$identity);
}

abstract class _SseState implements SseState {
  const factory _SseState({final String data}) = _$SseStateImpl;

  @override
  String get data;

  /// Create a copy of SseState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SseStateImplCopyWith<_$SseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
