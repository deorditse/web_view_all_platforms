part of 'pay_bloc.dart';

@freezed
class PayState with _$PayState {
  const factory PayState.loading() = _LoadingPayState;

  const factory PayState.verificationSuccessful() =
      _VerificationSuccessfulPayState;

  const factory PayState.verificationFailed({String? failMessage}) = _VerificationFailedPayState;
}
