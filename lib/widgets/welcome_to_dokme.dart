import 'package:dokme_burger/components/text-style.dart';
import 'package:flutter/material.dart';

class WelcomeToDokme extends StatelessWidget {
  const WelcomeToDokme({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: <TextSpan>[
        TextSpan(
            style: AppTextStyle.homePageHeadText, text: ' !به'),
        TextSpan(
            style: AppTextStyle.homePageHeadYellowText,
            text: ' دکمه'),
        TextSpan(
            style: AppTextStyle.homePageHeadText,
            text: ' خوش آمدی'),
      ]),
    );
  }
}