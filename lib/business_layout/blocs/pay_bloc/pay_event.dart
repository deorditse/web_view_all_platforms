part of 'pay_bloc.dart';

@freezed
class PayEvent with _$PayEvent {
  const factory PayEvent.initial() = _InitialPayEvent;

  const factory PayEvent.paymentVerification(
      {required String codeVerification}) = PaymentVerificationPayEvent;

  const factory PayEvent.tryForFree() = _TryForFreePayEvent;
}
