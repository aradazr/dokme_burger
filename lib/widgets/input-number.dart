import 'package:dokme_burger/components/colors-style.dart';
import 'package:dokme_burger/components/strings.dart';
import 'package:dokme_burger/components/text-style.dart';
import 'package:flutter/material.dart';

class InputNumber extends StatelessWidget {
  const InputNumber({
    super.key,
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
            padding: const EdgeInsets.only(left: 70),
            child: Text(
              AppText.interYourNumber,
              style: AppTextStyle.interYourNumber,
            ),
          ),
          SizedBox(
            height: size.height * .006,
          ),
          SizedBox(
            width: size.width * .77,
            height: size.height * .1,
            child: TextField(
              style: AppTextStyle.typeNumberLoginPage,
              textAlign: TextAlign.center,
              maxLength: 11,
              decoration: InputDecoration(
                hintText: AppText.numberPlaceHolder,
                hintStyle: AppTextStyle.numberPlaceHolder,
                counterText: '',
                fillColor: ColorStyles.loginNumberField,
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
