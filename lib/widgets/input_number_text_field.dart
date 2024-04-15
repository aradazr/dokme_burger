// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:dokme_burger/components/text-style.dart';

class InputNumberTextField extends StatelessWidget {
  
  
  final String helperText;
  final String hintText;
  final String counter;
  final Color textFieldColor;
  final TextEditingController controller;

    InputNumberTextField({
    super.key,
    required this.helperText,
    required this.hintText,
    required this.textFieldColor,
    required this.controller,
    required this.counter
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: [
          SizedBox(
            height: size.height * .05,
          ),
           Padding(
            padding: EdgeInsets.only(right: 57),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  helperText,
                  style: AppTextStyle.interYourNumber,
                ),
                SizedBox(width: size.width* .12,),
                
                Text(
                  counter,
                  style: AppTextStyle.registerCodePageCounter,
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * .006,
          ),
          SizedBox(
            width: size.width * .77,
            height: size.height * .1,
            child: TextField(
              controller: controller,
              style: AppTextStyle.typeNumberLoginPage,
              textAlign: TextAlign.center,
              maxLength: 11,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: AppTextStyle.numberPlaceHolder,
                counterText: '',
                fillColor: textFieldColor,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(48)),
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(48)),
                filled: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
