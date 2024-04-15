import 'package:dokme_burger/components/colors-style.dart';
import 'package:dokme_burger/components/strings.dart';
import 'package:dokme_burger/components/text-style.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_inner_shadow/flutter_inner_shadow.dart';

class SendCodeBttn extends StatelessWidget {
  const SendCodeBttn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {},
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
            color: ColorStyles.loginPageSendCodeColor,
          ),
          child: Text(
            AppText.loginPageSendCode,
            style: AppTextStyle.sendCode,
          ),
        ),
      ),
    );
  }
}
