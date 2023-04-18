// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pay_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PayEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String codeVerification) paymentVerification,
    required TResult Function() tryForFree,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String codeVerification)? paymentVerification,
    TResult? Function()? tryForFree,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String codeVerification)? paymentVerification,
    TResult Function()? tryForFree,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPayEvent value) initial,
    required TResult Function(PaymentVerificationPayEvent value)
        paymentVerification,
    required TResult Function(_TryForFreePayEvent value) tryForFree,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPayEvent value)? initial,
    TResult? Function(PaymentVerificationPayEvent value)? paymentVerification,
    TResult? Function(_TryForFreePayEvent value)? tryForFree,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPayEvent value)? initial,
    TResult Function(PaymentVerificationPayEvent value)? paymentVerification,
    TResult Function(_TryForFreePayEvent value)? tryForFree,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayEventCopyWith<$Res> {
  factory $PayEventCopyWith(PayEvent value, $Res Function(PayEvent) then) =
      _$PayEventCopyWithImpl<$Res, PayEvent>;
}

/// @nodoc
class _$PayEventCopyWithImpl<$Res, $Val extends PayEvent>
    implements $PayEventCopyWith<$Res> {
  _$PayEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialPayEventCopyWith<$Res> {
  factory _$$_InitialPayEventCopyWith(
          _$_InitialPayEvent value, $Res Function(_$_InitialPayEvent) then) =
      __$$_InitialPayEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialPayEventCopyWithImpl<$Res>
    extends _$PayEventCopyWithImpl<$Res, _$_InitialPayEvent>
    implements _$$_InitialPayEventCopyWith<$Res> {
  __$$_InitialPayEventCopyWithImpl(
      _$_InitialPayEvent _value, $Res Function(_$_InitialPayEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialPayEvent implements _InitialPayEvent {
  const _$_InitialPayEvent();

  @override
  String toString() {
    return 'PayEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialPayEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String codeVerification) paymentVerification,
    required TResult Function() tryForFree,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String codeVerification)? paymentVerification,
    TResult? Function()? tryForFree,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String codeVerification)? paymentVerification,
    TResult Function()? tryForFree,
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
    required TResult Function(_InitialPayEvent value) initial,
    required TResult Function(PaymentVerificationPayEvent value)
        paymentVerification,
    required TResult Function(_TryForFreePayEvent value) tryForFree,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPayEvent value)? initial,
    TResult? Function(PaymentVerificationPayEvent value)? paymentVerification,
    TResult? Function(_TryForFreePayEvent value)? tryForFree,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPayEvent value)? initial,
    TResult Function(PaymentVerificationPayEvent value)? paymentVerification,
    TResult Function(_TryForFreePayEvent value)? tryForFree,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialPayEvent implements PayEvent {
  const factory _InitialPayEvent() = _$_InitialPayEvent;
}

/// @nodoc
abstract class _$$PaymentVerificationPayEventCopyWith<$Res> {
  factory _$$PaymentVerificationPayEventCopyWith(
          _$PaymentVerificationPayEvent value,
          $Res Function(_$PaymentVerificationPayEvent) then) =
      __$$PaymentVerificationPayEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String codeVerification});
}

/// @nodoc
class __$$PaymentVerificationPayEventCopyWithImpl<$Res>
    extends _$PayEventCopyWithImpl<$Res, _$PaymentVerificationPayEvent>
    implements _$$PaymentVerificationPayEventCopyWith<$Res> {
  __$$PaymentVerificationPayEventCopyWithImpl(
      _$PaymentVerificationPayEvent _value,
      $Res Function(_$PaymentVerificationPayEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codeVerification = null,
  }) {
    return _then(_$PaymentVerificationPayEvent(
      codeVerification: null == codeVerification
          ? _value.codeVerification
          : codeVerification // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentVerificationPayEvent implements PaymentVerificationPayEvent {
  const _$PaymentVerificationPayEvent({required this.codeVerification});

  @override
  final String codeVerification;

  @override
  String toString() {
    return 'PayEvent.paymentVerification(codeVerification: $codeVerification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentVerificationPayEvent &&
            (identical(other.codeVerification, codeVerification) ||
                other.codeVerification == codeVerification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, codeVerification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentVerificationPayEventCopyWith<_$PaymentVerificationPayEvent>
      get copyWith => __$$PaymentVerificationPayEventCopyWithImpl<
          _$PaymentVerificationPayEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String codeVerification) paymentVerification,
    required TResult Function() tryForFree,
  }) {
    return paymentVerification(codeVerification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String codeVerification)? paymentVerification,
    TResult? Function()? tryForFree,
  }) {
    return paymentVerification?.call(codeVerification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String codeVerification)? paymentVerification,
    TResult Function()? tryForFree,
    required TResult orElse(),
  }) {
    if (paymentVerification != null) {
      return paymentVerification(codeVerification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPayEvent value) initial,
    required TResult Function(PaymentVerificationPayEvent value)
        paymentVerification,
    required TResult Function(_TryForFreePayEvent value) tryForFree,
  }) {
    return paymentVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPayEvent value)? initial,
    TResult? Function(PaymentVerificationPayEvent value)? paymentVerification,
    TResult? Function(_TryForFreePayEvent value)? tryForFree,
  }) {
    return paymentVerification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPayEvent value)? initial,
    TResult Function(PaymentVerificationPayEvent value)? paymentVerification,
    TResult Function(_TryForFreePayEvent value)? tryForFree,
    required TResult orElse(),
  }) {
    if (paymentVerification != null) {
      return paymentVerification(this);
    }
    return orElse();
  }
}

abstract class PaymentVerificationPayEvent implements PayEvent {
  const factory PaymentVerificationPayEvent(
      {required final String codeVerification}) = _$PaymentVerificationPayEvent;

  String get codeVerification;
  @JsonKey(ignore: true)
  _$$PaymentVerificationPayEventCopyWith<_$PaymentVerificationPayEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TryForFreePayEventCopyWith<$Res> {
  factory _$$_TryForFreePayEventCopyWith(_$_TryForFreePayEvent value,
          $Res Function(_$_TryForFreePayEvent) then) =
      __$$_TryForFreePayEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TryForFreePayEventCopyWithImpl<$Res>
    extends _$PayEventCopyWithImpl<$Res, _$_TryForFreePayEvent>
    implements _$$_TryForFreePayEventCopyWith<$Res> {
  __$$_TryForFreePayEventCopyWithImpl(
      _$_TryForFreePayEvent _value, $Res Function(_$_TryForFreePayEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TryForFreePayEvent implements _TryForFreePayEvent {
  const _$_TryForFreePayEvent();

  @override
  String toString() {
    return 'PayEvent.tryForFree()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TryForFreePayEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String codeVerification) paymentVerification,
    required TResult Function() tryForFree,
  }) {
    return tryForFree();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String codeVerification)? paymentVerification,
    TResult? Function()? tryForFree,
  }) {
    return tryForFree?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String codeVerification)? paymentVerification,
    TResult Function()? tryForFree,
    required TResult orElse(),
  }) {
    if (tryForFree != null) {
      return tryForFree();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPayEvent value) initial,
    required TResult Function(PaymentVerificationPayEvent value)
        paymentVerification,
    required TResult Function(_TryForFreePayEvent value) tryForFree,
  }) {
    return tryForFree(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPayEvent value)? initial,
    TResult? Function(PaymentVerificationPayEvent value)? paymentVerification,
    TResult? Function(_TryForFreePayEvent value)? tryForFree,
  }) {
    return tryForFree?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPayEvent value)? initial,
    TResult Function(PaymentVerificationPayEvent value)? paymentVerification,
    TResult Function(_TryForFreePayEvent value)? tryForFree,
    required TResult orElse(),
  }) {
    if (tryForFree != null) {
      return tryForFree(this);
    }
    return orElse();
  }
}

abstract class _TryForFreePayEvent implements PayEvent {
  const factory _TryForFreePayEvent() = _$_TryForFreePayEvent;
}

/// @nodoc
mixin _$PayState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() verificationSuccessful,
    required TResult Function(String? failMessage) verificationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? verificationSuccessful,
    TResult? Function(String? failMessage)? verificationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? verificationSuccessful,
    TResult Function(String? failMessage)? verificationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingPayState value) loading,
    required TResult Function(_VerificationSuccessfulPayState value)
        verificationSuccessful,
    required TResult Function(_VerificationFailedPayState value)
        verificationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingPayState value)? loading,
    TResult? Function(_VerificationSuccessfulPayState value)?
        verificationSuccessful,
    TResult? Function(_VerificationFailedPayState value)? verificationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingPayState value)? loading,
    TResult Function(_VerificationSuccessfulPayState value)?
        verificationSuccessful,
    TResult Function(_VerificationFailedPayState value)? verificationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayStateCopyWith<$Res> {
  factory $PayStateCopyWith(PayState value, $Res Function(PayState) then) =
      _$PayStateCopyWithImpl<$Res, PayState>;
}

/// @nodoc
class _$PayStateCopyWithImpl<$Res, $Val extends PayState>
    implements $PayStateCopyWith<$Res> {
  _$PayStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingPayStateCopyWith<$Res> {
  factory _$$_LoadingPayStateCopyWith(
          _$_LoadingPayState value, $Res Function(_$_LoadingPayState) then) =
      __$$_LoadingPayStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingPayStateCopyWithImpl<$Res>
    extends _$PayStateCopyWithImpl<$Res, _$_LoadingPayState>
    implements _$$_LoadingPayStateCopyWith<$Res> {
  __$$_LoadingPayStateCopyWithImpl(
      _$_LoadingPayState _value, $Res Function(_$_LoadingPayState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingPayState implements _LoadingPayState {
  const _$_LoadingPayState();

  @override
  String toString() {
    return 'PayState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingPayState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() verificationSuccessful,
    required TResult Function(String? failMessage) verificationFailed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? verificationSuccessful,
    TResult? Function(String? failMessage)? verificationFailed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? verificationSuccessful,
    TResult Function(String? failMessage)? verificationFailed,
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
    required TResult Function(_LoadingPayState value) loading,
    required TResult Function(_VerificationSuccessfulPayState value)
        verificationSuccessful,
    required TResult Function(_VerificationFailedPayState value)
        verificationFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingPayState value)? loading,
    TResult? Function(_VerificationSuccessfulPayState value)?
        verificationSuccessful,
    TResult? Function(_VerificationFailedPayState value)? verificationFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingPayState value)? loading,
    TResult Function(_VerificationSuccessfulPayState value)?
        verificationSuccessful,
    TResult Function(_VerificationFailedPayState value)? verificationFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingPayState implements PayState {
  const factory _LoadingPayState() = _$_LoadingPayState;
}

/// @nodoc
abstract class _$$_VerificationSuccessfulPayStateCopyWith<$Res> {
  factory _$$_VerificationSuccessfulPayStateCopyWith(
          _$_VerificationSuccessfulPayState value,
          $Res Function(_$_VerificationSuccessfulPayState) then) =
      __$$_VerificationSuccessfulPayStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VerificationSuccessfulPayStateCopyWithImpl<$Res>
    extends _$PayStateCopyWithImpl<$Res, _$_VerificationSuccessfulPayState>
    implements _$$_VerificationSuccessfulPayStateCopyWith<$Res> {
  __$$_VerificationSuccessfulPayStateCopyWithImpl(
      _$_VerificationSuccessfulPayState _value,
      $Res Function(_$_VerificationSuccessfulPayState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_VerificationSuccessfulPayState
    implements _VerificationSuccessfulPayState {
  const _$_VerificationSuccessfulPayState();

  @override
  String toString() {
    return 'PayState.verificationSuccessful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerificationSuccessfulPayState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() verificationSuccessful,
    required TResult Function(String? failMessage) verificationFailed,
  }) {
    return verificationSuccessful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? verificationSuccessful,
    TResult? Function(String? failMessage)? verificationFailed,
  }) {
    return verificationSuccessful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? verificationSuccessful,
    TResult Function(String? failMessage)? verificationFailed,
    required TResult orElse(),
  }) {
    if (verificationSuccessful != null) {
      return verificationSuccessful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingPayState value) loading,
    required TResult Function(_VerificationSuccessfulPayState value)
        verificationSuccessful,
    required TResult Function(_VerificationFailedPayState value)
        verificationFailed,
  }) {
    return verificationSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingPayState value)? loading,
    TResult? Function(_VerificationSuccessfulPayState value)?
        verificationSuccessful,
    TResult? Function(_VerificationFailedPayState value)? verificationFailed,
  }) {
    return verificationSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingPayState value)? loading,
    TResult Function(_VerificationSuccessfulPayState value)?
        verificationSuccessful,
    TResult Function(_VerificationFailedPayState value)? verificationFailed,
    required TResult orElse(),
  }) {
    if (verificationSuccessful != null) {
      return verificationSuccessful(this);
    }
    return orElse();
  }
}

abstract class _VerificationSuccessfulPayState implements PayState {
  const factory _VerificationSuccessfulPayState() =
      _$_VerificationSuccessfulPayState;
}

/// @nodoc
abstract class _$$_VerificationFailedPayStateCopyWith<$Res> {
  factory _$$_VerificationFailedPayStateCopyWith(
          _$_VerificationFailedPayState value,
          $Res Function(_$_VerificationFailedPayState) then) =
      __$$_VerificationFailedPayStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String? failMessage});
}

/// @nodoc
class __$$_VerificationFailedPayStateCopyWithImpl<$Res>
    extends _$PayStateCopyWithImpl<$Res, _$_VerificationFailedPayState>
    implements _$$_VerificationFailedPayStateCopyWith<$Res> {
  __$$_VerificationFailedPayStateCopyWithImpl(
      _$_VerificationFailedPayState _value,
      $Res Function(_$_VerificationFailedPayState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failMessage = freezed,
  }) {
    return _then(_$_VerificationFailedPayState(
      failMessage: freezed == failMessage
          ? _value.failMessage
          : failMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_VerificationFailedPayState implements _VerificationFailedPayState {
  const _$_VerificationFailedPayState({this.failMessage});

  @override
  final String? failMessage;

  @override
  String toString() {
    return 'PayState.verificationFailed(failMessage: $failMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerificationFailedPayState &&
            (identical(other.failMessage, failMessage) ||
                other.failMessage == failMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerificationFailedPayStateCopyWith<_$_VerificationFailedPayState>
      get copyWith => __$$_VerificationFailedPayStateCopyWithImpl<
          _$_VerificationFailedPayState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() verificationSuccessful,
    required TResult Function(String? failMessage) verificationFailed,
  }) {
    return verificationFailed(failMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? verificationSuccessful,
    TResult? Function(String? failMessage)? verificationFailed,
  }) {
    return verificationFailed?.call(failMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? verificationSuccessful,
    TResult Function(String? failMessage)? verificationFailed,
    required TResult orElse(),
  }) {
    if (verificationFailed != null) {
      return verificationFailed(failMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingPayState value) loading,
    required TResult Function(_VerificationSuccessfulPayState value)
        verificationSuccessful,
    required TResult Function(_VerificationFailedPayState value)
        verificationFailed,
  }) {
    return verificationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingPayState value)? loading,
    TResult? Function(_VerificationSuccessfulPayState value)?
        verificationSuccessful,
    TResult? Function(_VerificationFailedPayState value)? verificationFailed,
  }) {
    return verificationFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingPayState value)? loading,
    TResult Function(_VerificationSuccessfulPayState value)?
        verificationSuccessful,
    TResult Function(_VerificationFailedPayState value)? verificationFailed,
    required TResult orElse(),
  }) {
    if (verificationFailed != null) {
      return verificationFailed(this);
    }
    return orElse();
  }
}

abstract class _VerificationFailedPayState implements PayState {
  const factory _VerificationFailedPayState({final String? failMessage}) =
      _$_VerificationFailedPayState;

  String? get failMessage;
  @JsonKey(ignore: true)
  _$$_VerificationFailedPayStateCopyWith<_$_VerificationFailedPayState>
      get copyWith => throw _privateConstructorUsedError;
}
