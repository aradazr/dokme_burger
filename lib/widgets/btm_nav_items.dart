import 'package:dokme_burger/components/colors-style.dart';
import 'package:flutter/material.dart';

class BtmNavItems extends StatelessWidget {
   BtmNavItems({
    required this.iconImage,
    required this.isActive,
    required this.onTap,
    super.key,
  });

String iconImage;
bool isActive;
void Function() onTap;


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: 55,
      width: 55,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:isActive? ColorStyles.navBarHomeActiveColor:null
      ),
      child: GestureDetector(
      
        onTap: onTap,
        child: Image.asset(iconImage,height: 50,) ,
      ),
    );
  }
}