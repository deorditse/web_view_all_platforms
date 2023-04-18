import 'dart:async';
import 'package:chat_gpt/business_layout/codes_for_verify.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

part 'pay_event.dart';

part 'pay_state.dart';

///for freezed
part 'pay_bloc.freezed.dart';

// flutter pub run build_runner build --delete-conflicting-outputs
class PayBloc extends Bloc<PayEvent, PayState> {
  FlutterSecureStorage? _storageSecure; //локальная база данных - секьюрная

  PayBloc() : super(const PayState.loading()) {
    on<PayEvent>(
      (PayEvent event, _) {
        event.when<void>(
          paymentVerification: _paymentVerification,
          initial: _initial,
          tryForFree: _tryForFree,
        );
      },
    );
  }

  Future<void> _paymentVerification(String codeVerification) async {
    try {
      //ввод с text field
      emit(const PayState.loading());

      if (listWithVerifyCodes.contains(codeVerification)) {
        print("save пароль с шифрованием через save secure");
        await _storageSecure?.write(
          key: 'verifyCode',
          value: codeVerification,
          iOptions: const IOSOptions(
            accessibility: KeychainAccessibility.first_unlock,
          ),
        );
        emit(const PayState.verificationSuccessful());
      } else {
        emit(const PayState.verificationFailed(
            failMessage: "Неправильный код верификации"));
      }
    } catch (error) {
      print(error);
    }
  }

  Future<void> _initial() async {
    try {
      emit(const PayState.loading());

      _storageSecure = const FlutterSecureStorage(
        aOptions: AndroidOptions(
          encryptedSharedPreferences: true,
        ),
      );
      final verifyCode = await _storageSecure?.read(key: 'verifyCode');

      if (verifyCode != null) {
        emit(const PayState.verificationSuccessful());
      } else {
        add(const PayEvent.tryForFree());
      }
    } catch (error) {
      print(error);
    }
  }

  Future<void> _tryForFree() async {
    try {
      emit(const PayState.loading());
      final tryForFreeCode = await _storageSecure?.read(key: 'tryForFreeCode');

      if (tryForFreeCode != null) {
        emit(
          const PayState.verificationFailed(
            failMessage: "Вы использовали все бесплатные входы",
          ),
        );
      } else {
        emit(const PayState.verificationSuccessful());
        Timer.periodic(
          // const Duration(minutes: 3),
          const Duration(seconds: 3),
          (Timer timer) async {
            timer.cancel();
            print("первый бесплатный вход");
            await _storageSecure?.write(
              key: 'tryForFreeCode',
              value: "tryForFreeCode code 777",
              iOptions: const IOSOptions(
                accessibility: KeychainAccessibility.first_unlock,
              ),
            );
            emit(
              const PayState.verificationFailed(
                failMessage: "Время бесплатного сеанса завершено",
              ),
            );
          },
        );
      }
    } catch (error) {
      print(error);
    }
  }
}
