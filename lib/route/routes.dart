import 'package:dokme_burger/route/names.dart';
import 'package:dokme_burger/screens/login_page.dart';
import 'package:dokme_burger/screens/main_screens/main_screen.dart';
import 'package:dokme_burger/screens/product_list_screen.dart';
import 'package:dokme_burger/screens/product_single_screen.dart';
import 'package:dokme_burger/screens/registration_code_page.dart';
import 'package:dokme_burger/screens/sign_up_page.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  ScreenNames.root: (context) => LoginPage(),
  ScreenNames.registerationCodePage: (context) => RegisterationCodePage(),
  ScreenNames.signUpPage: (context) => SignUpPage(),
  ScreenNames.mainScreen: (context) => MainScreen(),
  ScreenNames.productListScreen: (context) => ProductListScreen(),
  ScreenNames.productSingleScreen: (context) => ProductSingleScreen(),
};
