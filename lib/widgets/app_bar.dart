import 'package:dokme_burger/components/colors-style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  

  MyAppBar({
    super.key,
    this.rightIcon,
    this.leftIcon,
    this.onTabRightIcon,
    this.onTabLefttIcon,
    required this.appBarShadowColor

  }) : preferredSize = Size.fromHeight(70);
  


   // default is 56.0
late final Widget? rightIcon;
  late final Widget? leftIcon;
 void Function()? onTabRightIcon;
 void Function()? onTabLefttIcon;
  final Color appBarShadowColor;
  @override
  final Size preferredSize;
  @override
  _MyAppBarState createState() => _MyAppBarState();
  
}


  
class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: widget.appBarShadowColor,
            blurRadius: 15,
            offset: Offset(0, 3),
            blurStyle: BlurStyle.outer,

          )
        ]
      ),
      child: AppBar(
        backgroundColor: ColorStyles.appBarBackGroundColor,
        forceMaterialTransparency: false,
        
        
        
        leading: Padding(
          padding:  EdgeInsets.only(top: 19,left: 8),
          child:GestureDetector(
            onTap: widget.onTabLefttIcon,
            child: widget.leftIcon) ,
        ),
        actions: [
          GestureDetector(
            onTap: widget.onTabRightIcon,
            child: Padding(
              padding: const EdgeInsets.only(top: 14, right: 10),
              child: widget.rightIcon,
            ),
          ),
        ],
      ),
    );
  }
}
