// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/widgets.dart';
import 'package:flutter_inner_shadow/flutter_inner_shadow.dart';

import 'package:dokme_burger/components/colors-style.dart';
import 'package:dokme_burger/components/strings.dart';
import 'package:dokme_burger/components/text-style.dart';

class CustomBttn extends StatelessWidget {
   CustomBttn({
    super.key,
    required this.bttnColor,
    required this.bttnText,
    required this.onTap,
  });


  final Color bttnColor;
  final String bttnText;
  final  onTap;

  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: InnerShadow(
        shadows: [
          Shadow(
              blurRadius: 4,
              color: ColorStyles.loginPageSendCodeShadowColor,
              offset: Offset(0, 4))
        ],
        child: Container(
          alignment: Alignment.center,
          height: size.height * .08,
          width: size.width * .77,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(48),
            color: bttnColor,
          ),
          child: Text(
            bttnText,
            style: AppTextStyle.sendCode,
          ),
        ),
      ),
    );
  }
}
