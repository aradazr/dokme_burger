import 'package:dokme_burger/components/colors-style.dart';
import 'package:dokme_burger/components/strings.dart';
import 'package:dokme_burger/route/names.dart';
import 'package:dokme_burger/screens/auth/cubit/auth_cubit.dart';
import 'package:dokme_burger/widgets/input_text_field.dart';
import 'package:dokme_burger/widgets/custom_bttn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SendSmsScreen extends StatelessWidget {
  SendSmsScreen({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: ColorStyles.loginPageBackGroundColor,
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * .12,
                  ),
                  Image.asset('assets/images/dokme logo.png'),

                  //? تکست فیلدی که شماره موبایل را وارد میکنیم

                  InputTextField(
                      helperText: AppText.loginPageinterYourNumber,
                      hintText: AppText.loginPageHintText,
                      textFieldColor: ColorStyles.loginPageTextFieldColor,
                      counter: '',
                      controller: _controller),
                  SizedBox(
                    height: size.height * .015,
                  ),
                  //? دکمه ارسال کد
                  BlocConsumer<AuthCubit, AuthState>(
                    listener: (context, state) {
                      if (state is SentState) {
                        Navigator.pushNamed(
                            context, ScreenNames.verifyCodeScreen,
                            arguments: state.mobile);
                      } else if(state is ErrorState) {
                        debugPrint(state.toString());
                        ScaffoldMessenger.of(context).showSnackBar(
                          
                           const SnackBar(
                            backgroundColor: Colors.red,
                            duration: Duration(seconds: 1),
                            content: Text('خطایی رخ داد'),
                          ),
                        );
                      }
                    },
                    builder: (context, state) {
                      if (state is LoadingState) {
                       return const Center(
                          child: CircularProgressIndicator(
                            color: Colors.purple,
                            
                          ),
                        );
                      }
                      else {
                        return CustomBttn(
                        bttnColor: ColorStyles.loginPageSendCodeColor,
                        bttnText: AppText.loginPageSendCode,
                        onTap: () {
                          BlocProvider.of<AuthCubit>(context)
                              .sendSms(_controller.text);
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
