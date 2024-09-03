// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() profileFetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? profileFetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? profileFetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchProfileEvent value) profileFetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchProfileEvent value)? profileFetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchProfileEvent value)? profileFetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchProfileEventImplCopyWith<$Res> {
  factory _$$FetchProfileEventImplCopyWith(_$FetchProfileEventImpl value,
          $Res Function(_$FetchProfileEventImpl) then) =
      __$$FetchProfileEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchProfileEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$FetchProfileEventImpl>
    implements _$$FetchProfileEventImplCopyWith<$Res> {
  __$$FetchProfileEventImplCopyWithImpl(_$FetchProfileEventImpl _value,
      $Res Function(_$FetchProfileEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchProfileEventImpl implements FetchProfileEvent {
  const _$FetchProfileEventImpl();

  @override
  String toString() {
    return 'ProfileEvent.profileFetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchProfileEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() profileFetch,
  }) {
    return profileFetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? profileFetch,
  }) {
    return profileFetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? profileFetch,
    required TResult orElse(),
  }) {
    if (profileFetch != null) {
      return profileFetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchProfileEvent value) profileFetch,
  }) {
    return profileFetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchProfileEvent value)? profileFetch,
  }) {
    return profileFetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchProfileEvent value)? profileFetch,
    required TResult orElse(),
  }) {
    if (profileFetch != null) {
      return profileFetch(this);
    }
    return orElse();
  }
}

abstract class FetchProfileEvent implements ProfileEvent {
  const factory FetchProfileEvent() = _$FetchProfileEventImpl;
}

/// @nodoc
mixin _$ProfileState {
  bool get isLoadingState => throw _privateConstructorUsedError;
  bool get isSuccessState => throw _privateConstructorUsedError;
  List<UserEntity>? get userList => throw _privateConstructorUsedError;
  AppErrorHandler? get errorState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {bool isLoadingState,
      bool isSuccessState,
      List<UserEntity>? userList,
      AppErrorHandler? errorState});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadingState = null,
    Object? isSuccessState = null,
    Object? userList = freezed,
    Object? errorState = freezed,
  }) {
    return _then(_value.copyWith(
      isLoadingState: null == isLoadingState
          ? _value.isLoadingState
          : isLoadingState // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccessState: null == isSuccessState
          ? _value.isSuccessState
          : isSuccessState // ignore: cast_nullable_to_non_nullable
              as bool,
      userList: freezed == userList
          ? _value.userList
          : userList // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>?,
      errorState: freezed == errorState
          ? _value.errorState
          : errorState // ignore: cast_nullable_to_non_nullable
              as AppErrorHandler?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoadingState,
      bool isSuccessState,
      List<UserEntity>? userList,
      AppErrorHandler? errorState});
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadingState = null,
    Object? isSuccessState = null,
    Object? userList = freezed,
    Object? errorState = freezed,
  }) {
    return _then(_$ProfileStateImpl(
      isLoadingState: null == isLoadingState
          ? _value.isLoadingState
          : isLoadingState // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccessState: null == isSuccessState
          ? _value.isSuccessState
          : isSuccessState // ignore: cast_nullable_to_non_nullable
              as bool,
      userList: freezed == userList
          ? _value._userList
          : userList // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>?,
      errorState: freezed == errorState
          ? _value.errorState
          : errorState // ignore: cast_nullable_to_non_nullable
              as AppErrorHandler?,
    ));
  }
}

/// @nodoc

class _$ProfileStateImpl implements _ProfileState {
  const _$ProfileStateImpl(
      {this.isLoadingState = false,
      this.isSuccessState = false,
      final List<UserEntity>? userList = const [],
      this.errorState})
      : _userList = userList;

  @override
  @JsonKey()
  final bool isLoadingState;
  @override
  @JsonKey()
  final bool isSuccessState;
  final List<UserEntity>? _userList;
  @override
  @JsonKey()
  List<UserEntity>? get userList {
    final value = _userList;
    if (value == null) return null;
    if (_userList is EqualUnmodifiableListView) return _userList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final AppErrorHandler? errorState;

  @override
  String toString() {
    return 'ProfileState(isLoadingState: $isLoadingState, isSuccessState: $isSuccessState, userList: $userList, errorState: $errorState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.isLoadingState, isLoadingState) ||
                other.isLoadingState == isLoadingState) &&
            (identical(other.isSuccessState, isSuccessState) ||
                other.isSuccessState == isSuccessState) &&
            const DeepCollectionEquality().equals(other._userList, _userList) &&
            (identical(other.errorState, errorState) ||
                other.errorState == errorState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoadingState, isSuccessState,
      const DeepCollectionEquality().hash(_userList), errorState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {final bool isLoadingState,
      final bool isSuccessState,
      final List<UserEntity>? userList,
      final AppErrorHandler? errorState}) = _$ProfileStateImpl;

  @override
  bool get isLoadingState;
  @override
  bool get isSuccessState;
  @override
  List<UserEntity>? get userList;
  @override
  AppErrorHandler? get errorState;
  @override
  @JsonKey(ignore: true)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
