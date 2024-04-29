import 'package:dokme_burger/components/colors-style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  

  MyAppBar({
    super.key,
    this.rightIcon,
    this.leftIcon,
    this.onTabRightIcon,
    this.onTabLefttIcon

  }) : preferredSize = Size.fromHeight(70);
  


   // default is 56.0
late final Widget? rightIcon;
  late final Widget? leftIcon;
 void Function()? onTabRightIcon;
 void Function()? onTabLefttIcon;
  @override
  final Size preferredSize;
  @override
  _MyAppBarState createState() => _MyAppBarState();
  
}


  
class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorStyles.appBarBackGroundColor,
      shadowColor: Colors.black,
      
      elevation: 0,
      leading: Padding(
        padding:  EdgeInsets.only(top: 19),
        child:GestureDetector(
          onTap: widget.onTabRightIcon,
          child: widget.leftIcon) ,
      ),
      actions: [
        GestureDetector(
          onTap: widget.onTabLefttIcon,
          child: Padding(
            padding: const EdgeInsets.only(top: 14, right: 10),
            child: widget.rightIcon,
          ),
        ),
      ],
    );
  }
}
