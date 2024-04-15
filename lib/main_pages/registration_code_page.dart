import 'package:dokme_burger/components/colors-style.dart';
import 'package:dokme_burger/components/strings.dart';
import 'package:dokme_burger/components/text-style.dart';
import 'package:dokme_burger/widgets/custom_bttn.dart';
import 'package:dokme_burger/widgets/input_number_text_field.dart';
import 'package:flutter/material.dart';

class RegisterationCodePage extends StatelessWidget {
  RegisterationCodePage({super.key});

  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
                    AppText.registerCodePageSendCodeToNumber,
                    style: AppTextStyle.registerCodePageSendCodeToNumber,
                  ),
                  SizedBox(
                    height: size.height * .019,
                  ),
                 
                 //! اگر شماره اشتباه است ان را ویرایش کن
                  Text(
                    AppText.registerCodePageWrongNumber,
                    style: AppTextStyle.registerCodePageWrongNumber,
                  ),
                  
                  //? محل قرار گیری کد فعال سازی
                  InputNumberTextField(
                      helperText: AppText.registerCodePageEnterRegisterationCode,
                      hintText: AppText.registerCodePageHintText,
                      textFieldColor: ColorStyles.registerCodePageTextFieldColor,
                      counter: '02:35',
                      controller: _controller),
                  
                  //? دکمه ی ادامه
                  CustomBttn(
                      bttnColor: ColorStyles.registerCodePageContinueColor,
                      bttnText: AppText.registerCodePageContinue
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