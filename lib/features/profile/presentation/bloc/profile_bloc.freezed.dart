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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserEntity> userlist) success,
    required TResult Function(AppErrorHandler error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserEntity> userlist)? success,
    TResult? Function(AppErrorHandler error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserEntity> userlist)? success,
    TResult Function(AppErrorHandler error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitialState value) initial,
    required TResult Function(ProfileLoadingState value) loading,
    required TResult Function(ProfileSuccessState value) success,
    required TResult Function(ProfileErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitialState value)? initial,
    TResult? Function(ProfileLoadingState value)? loading,
    TResult? Function(ProfileSuccessState value)? success,
    TResult? Function(ProfileErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitialState value)? initial,
    TResult Function(ProfileLoadingState value)? loading,
    TResult Function(ProfileSuccessState value)? success,
    TResult Function(ProfileErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProfileInitialStateImplCopyWith<$Res> {
  factory _$$ProfileInitialStateImplCopyWith(_$ProfileInitialStateImpl value,
          $Res Function(_$ProfileInitialStateImpl) then) =
      __$$ProfileInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileInitialStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileInitialStateImpl>
    implements _$$ProfileInitialStateImplCopyWith<$Res> {
  __$$ProfileInitialStateImplCopyWithImpl(_$ProfileInitialStateImpl _value,
      $Res Function(_$ProfileInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileInitialStateImpl implements ProfileInitialState {
  const _$ProfileInitialStateImpl();

  @override
  String toString() {
    return 'ProfileState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserEntity> userlist) success,
    required TResult Function(AppErrorHandler error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserEntity> userlist)? success,
    TResult? Function(AppErrorHandler error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserEntity> userlist)? success,
    TResult Function(AppErrorHandler error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitialState value) initial,
    required TResult Function(ProfileLoadingState value) loading,
    required TResult Function(ProfileSuccessState value) success,
    required TResult Function(ProfileErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitialState value)? initial,
    TResult? Function(ProfileLoadingState value)? loading,
    TResult? Function(ProfileSuccessState value)? success,
    TResult? Function(ProfileErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitialState value)? initial,
    TResult Function(ProfileLoadingState value)? loading,
    TResult Function(ProfileSuccessState value)? success,
    TResult Function(ProfileErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProfileInitialState implements ProfileState {
  const factory ProfileInitialState() = _$ProfileInitialStateImpl;
}

/// @nodoc
abstract class _$$ProfileLoadingStateImplCopyWith<$Res> {
  factory _$$ProfileLoadingStateImplCopyWith(_$ProfileLoadingStateImpl value,
          $Res Function(_$ProfileLoadingStateImpl) then) =
      __$$ProfileLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileLoadingStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileLoadingStateImpl>
    implements _$$ProfileLoadingStateImplCopyWith<$Res> {
  __$$ProfileLoadingStateImplCopyWithImpl(_$ProfileLoadingStateImpl _value,
      $Res Function(_$ProfileLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileLoadingStateImpl implements ProfileLoadingState {
  const _$ProfileLoadingStateImpl();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserEntity> userlist) success,
    required TResult Function(AppErrorHandler error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserEntity> userlist)? success,
    TResult? Function(AppErrorHandler error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserEntity> userlist)? success,
    TResult Function(AppErrorHandler error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitialState value) initial,
    required TResult Function(ProfileLoadingState value) loading,
    required TResult Function(ProfileSuccessState value) success,
    required TResult Function(ProfileErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitialState value)? initial,
    TResult? Function(ProfileLoadingState value)? loading,
    TResult? Function(ProfileSuccessState value)? success,
    TResult? Function(ProfileErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitialState value)? initial,
    TResult Function(ProfileLoadingState value)? loading,
    TResult Function(ProfileSuccessState value)? success,
    TResult Function(ProfileErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProfileLoadingState implements ProfileState {
  const factory ProfileLoadingState() = _$ProfileLoadingStateImpl;
}

/// @nodoc
abstract class _$$ProfileSuccessStateImplCopyWith<$Res> {
  factory _$$ProfileSuccessStateImplCopyWith(_$ProfileSuccessStateImpl value,
          $Res Function(_$ProfileSuccessStateImpl) then) =
      __$$ProfileSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserEntity> userlist});
}

/// @nodoc
class __$$ProfileSuccessStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileSuccessStateImpl>
    implements _$$ProfileSuccessStateImplCopyWith<$Res> {
  __$$ProfileSuccessStateImplCopyWithImpl(_$ProfileSuccessStateImpl _value,
      $Res Function(_$ProfileSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userlist = null,
  }) {
    return _then(_$ProfileSuccessStateImpl(
      userlist: null == userlist
          ? _value._userlist
          : userlist // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
    ));
  }
}

/// @nodoc

class _$ProfileSuccessStateImpl implements ProfileSuccessState {
  const _$ProfileSuccessStateImpl({required final List<UserEntity> userlist})
      : _userlist = userlist;

  final List<UserEntity> _userlist;
  @override
  List<UserEntity> get userlist {
    if (_userlist is EqualUnmodifiableListView) return _userlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userlist);
  }

  @override
  String toString() {
    return 'ProfileState.success(userlist: $userlist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileSuccessStateImpl &&
            const DeepCollectionEquality().equals(other._userlist, _userlist));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_userlist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileSuccessStateImplCopyWith<_$ProfileSuccessStateImpl> get copyWith =>
      __$$ProfileSuccessStateImplCopyWithImpl<_$ProfileSuccessStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserEntity> userlist) success,
    required TResult Function(AppErrorHandler error) error,
  }) {
    return success(userlist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserEntity> userlist)? success,
    TResult? Function(AppErrorHandler error)? error,
  }) {
    return success?.call(userlist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserEntity> userlist)? success,
    TResult Function(AppErrorHandler error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(userlist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitialState value) initial,
    required TResult Function(ProfileLoadingState value) loading,
    required TResult Function(ProfileSuccessState value) success,
    required TResult Function(ProfileErrorState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitialState value)? initial,
    TResult? Function(ProfileLoadingState value)? loading,
    TResult? Function(ProfileSuccessState value)? success,
    TResult? Function(ProfileErrorState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitialState value)? initial,
    TResult Function(ProfileLoadingState value)? loading,
    TResult Function(ProfileSuccessState value)? success,
    TResult Function(ProfileErrorState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ProfileSuccessState implements ProfileState {
  const factory ProfileSuccessState(
      {required final List<UserEntity> userlist}) = _$ProfileSuccessStateImpl;

  List<UserEntity> get userlist;
  @JsonKey(ignore: true)
  _$$ProfileSuccessStateImplCopyWith<_$ProfileSuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileErrorStateImplCopyWith<$Res> {
  factory _$$ProfileErrorStateImplCopyWith(_$ProfileErrorStateImpl value,
          $Res Function(_$ProfileErrorStateImpl) then) =
      __$$ProfileErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppErrorHandler error});
}

/// @nodoc
class __$$ProfileErrorStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileErrorStateImpl>
    implements _$$ProfileErrorStateImplCopyWith<$Res> {
  __$$ProfileErrorStateImplCopyWithImpl(_$ProfileErrorStateImpl _value,
      $Res Function(_$ProfileErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ProfileErrorStateImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppErrorHandler,
    ));
  }
}

/// @nodoc

class _$ProfileErrorStateImpl implements ProfileErrorState {
  const _$ProfileErrorStateImpl({required this.error});

  @override
  final AppErrorHandler error;

  @override
  String toString() {
    return 'ProfileState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileErrorStateImplCopyWith<_$ProfileErrorStateImpl> get copyWith =>
      __$$ProfileErrorStateImplCopyWithImpl<_$ProfileErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserEntity> userlist) success,
    required TResult Function(AppErrorHandler error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserEntity> userlist)? success,
    TResult? Function(AppErrorHandler error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserEntity> userlist)? success,
    TResult Function(AppErrorHandler error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitialState value) initial,
    required TResult Function(ProfileLoadingState value) loading,
    required TResult Function(ProfileSuccessState value) success,
    required TResult Function(ProfileErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitialState value)? initial,
    TResult? Function(ProfileLoadingState value)? loading,
    TResult? Function(ProfileSuccessState value)? success,
    TResult? Function(ProfileErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitialState value)? initial,
    TResult Function(ProfileLoadingState value)? loading,
    TResult Function(ProfileSuccessState value)? success,
    TResult Function(ProfileErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProfileErrorState implements ProfileState {
  const factory ProfileErrorState({required final AppErrorHandler error}) =
      _$ProfileErrorStateImpl;

  AppErrorHandler get error;
  @JsonKey(ignore: true)
  _$$ProfileErrorStateImplCopyWith<_$ProfileErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
