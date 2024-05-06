import 'package:bloc/bloc.dart';
import 'package:dokme_burger/data/constans.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:dio/dio.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial()) {
    emit(LoggedOutState());
  }

  Dio _dio = Dio();
 //! برای صفحه ی ارسال اس ام اس است که فقط یک موبایل دریافت میکنیم
  sendSms(String mobile) async {
    emit(LoadingState());
    try {
      _dio.post(EndPoints.sendSms, data: {"mobile": mobile}).then((value) {
        debugPrint(value.toString());
        if (value.statusCode == 201) {
          emit(SentState(mobile: mobile));
        } else {
          emit(ErrorState());
        }
      });
    } catch (e) {
      emit(ErrorState());
    }
  }
//! برای صفحه ی وارد  کردن کد فعال سازی میباشد
  verifyCode(String mobile, String code) async {
    emit(LoadingState());
    try {
      _dio.post(EndPoints.checkSmsCode, data: {"mobile": mobile, "code": code}).then(
          (value) {
        debugPrint(value.toString());
        if (value.statusCode == 201) {
          if (value.data["data"]["is_registered"]) {
            emit(VerifyedIsRegisteredState());
          } else {
            emit(VerifyedNotRegisteredState());
          }
        } else {
          emit(ErrorState());
        }
      });
    } catch (e) {
      emit(ErrorState());
    }
  }

  registeration() {}

  loggedOut() {}
}
