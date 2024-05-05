import 'package:dokme_burger/components/colors-style.dart';
import 'package:dokme_burger/components/strings.dart';
import 'package:dokme_burger/components/text-style.dart';
import 'package:flutter/material.dart';

class YellowBtnWidget extends StatelessWidget {
   YellowBtnWidget({
    super.key, required this.textInsideTheYellowContainer,
    
  });

  final String textInsideTheYellowContainer;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      height: size.height *.06,
      width: size.width *.36,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: ColorStyles.addToBasketColor,
        
      ),
      child: Text(
        textInsideTheYellowContainer,
        style: AppTextStyle.addToBasket,
      ),
    );
  }
}