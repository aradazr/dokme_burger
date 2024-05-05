import 'package:bloc/bloc.dart';
import 'package:dokme_burger/data/constans.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:dio/dio.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial()){
    emit(LoggedOutState());
  }

  Dio _dio = Dio();

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
  verifyCode(String mobile,String code) async {
    emit(LoadingState());
    try {
      _dio.post(EndPoints.sendSms, data: {"mobile": mobile,'code':code}).then((value) {
        debugPrint(value.toString());
        if (value.statusCode == 201) {
          emit(VerifyedState());
        } else {
          emit(ErrorState());
        }
      });
    } catch (e) {
      emit(ErrorState());
    }
  }
  registeration(){

  }

  loggedOut(){

  }
}
