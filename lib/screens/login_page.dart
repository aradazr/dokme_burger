import 'package:dokme_burger/components/colors-style.dart';
import 'package:dokme_burger/components/strings.dart';
import 'package:dokme_burger/route/names.dart';
import 'package:dokme_burger/widgets/input_text_field.dart';
import 'package:dokme_burger/widgets/custom_bttn.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

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
                  CustomBttn(
                    bttnColor: ColorStyles.loginPageSendCodeColor,
                    bttnText: AppText.loginPageSendCode,
                    onTap: ()=> Navigator.pushNamed(context, ScreenNames.registerationCodePage),
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
