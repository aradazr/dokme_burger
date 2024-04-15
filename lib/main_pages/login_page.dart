import 'package:dokme_burger/components/colors-style.dart';
import 'package:dokme_burger/widgets/input_number.dart';
import 'package:dokme_burger/widgets/send_code-bttn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;


    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorStyles.loginPageBackGroundColor,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              
              children: [
                SizedBox(height: size.height * .12,),
                Image.asset('assets/images/dokme logo.png'),
                 
                InputNumber(),
                SendCodeBttn()
              ],
            ),
          ),
        ),
      ),
    );
  }
}


