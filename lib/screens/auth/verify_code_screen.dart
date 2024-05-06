import 'dart:async';

import 'package:dokme_burger/components/colors-style.dart';
import 'package:dokme_burger/components/strings.dart';
import 'package:dokme_burger/components/text-style.dart';
import 'package:dokme_burger/route/names.dart';
import 'package:dokme_burger/screens/auth/cubit/auth_cubit.dart';
import 'package:dokme_burger/widgets/custom_bttn.dart';
import 'package:dokme_burger/widgets/input_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifyCodeScreen extends StatefulWidget {
  VerifyCodeScreen({super.key});

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  final TextEditingController _controller = TextEditingController();

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  late Timer _timer;

  int _start = 120;

  startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (timer) {
      setState(() {
        if (_start == 0) {
          _timer.cancel();
          Navigator.of(context).pop();
        } else {
          _start--;
        }
      });
    });
  }

  String formatTime(int sec){
    int min = sec ~/60;
    int secends = sec % 60;

    String minStr = min.toString().padLeft(2,'0');
    String secendsStr = secends.toString().padLeft(2,'0');
    return '$minStr:$secendsStr';
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final mobileRouteArg = ModalRoute.of(context)!.settings.arguments as String;
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: ColorStyles.registerCodePageBackGroundColorColor,
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * .12,
                  ),
                  //! لوگوی اصلی
                  Image.asset('assets/images/dokme logo.png'),
                  SizedBox(
                    height: size.height * .019,
                  ),

                  //! کد فعال سازی برای فلان شماره ارسال شد
                  Text(
                    AppText.registerCodePageSendCodeToNumber
                        .replaceAll(AppText.replace, mobileRouteArg),
                    style: AppTextStyle.registerCodePageSendCodeToNumber,
                  ),
                  SizedBox(
                    height: size.height * .019,
                  ),

                  //! اگر شماره اشتباه است ان را ویرایش کن
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Text(
                      AppText.registerCodePageWrongNumber,
                      style: AppTextStyle.registerCodePageWrongNumber,
                    ),
                  ),

                  //? محل قرار گیری کد فعال سازی
                  InputTextField(
                      helperText:
                          AppText.registerCodePageEnterRegisterationCode,
                      hintText: AppText.registerCodePageHintText,
                      textFieldColor:
                          ColorStyles.registerCodePageTextFieldColor,
                      counter: formatTime(_start),
                      controller: _controller),
                  SizedBox(
                    height: size.height * .015,
                  ),
                  //? دکمه ی ادامه
                  BlocConsumer<AuthCubit, AuthState>(
                    listener: (context, state) {
                      if (state is VerifyedNotRegisteredState) {
                        Navigator.pushNamed(context, ScreenNames.signUpPage);
                      } else if (state is VerifyedIsRegisteredState) {
                        Navigator.pushNamed(context, ScreenNames.mainScreen);
                      }
                    },
                    builder: (context, state) {
                      if (state is LoadingState) {
                        return const Center(
                          child: CircularProgressIndicator(
                            color: Colors.purple,
                          ),
                        );
                      } else {
                        return CustomBttn(
                          bttnColor: ColorStyles.registerCodePageContinueColor,
                          bttnText: AppText.registerCodePageContinue,
                          onTap: () {
                            BlocProvider.of<AuthCubit>(context)
                                .verifyCode(mobileRouteArg, _controller.text);
                          },
                        );
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
