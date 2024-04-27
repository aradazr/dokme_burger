import 'package:dokme_burger/components/colors-style.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  

  MyAppBar({
    super.key,
    this.rightIcon,
    this.leftIcon,
  }) : preferredSize = Size.fromHeight(70);
  
  @override
  final Size preferredSize; // default is 56.0
late final Widget? rightIcon;
  late final Widget? leftIcon;

  @override
  _MyAppBarState createState() => _MyAppBarState();
  
}


  
class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorStyles.appBarBackGroundColor,
      elevation: 0,
      leading: Padding(
        padding:  EdgeInsets.only(top: 19),
        child:widget.rightIcon ,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 14, right: 10),
          child: widget.leftIcon,
        ),
      ],
    );
  }
}
