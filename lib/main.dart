import 'package:dokme_burger/route/names.dart';
import 'package:dokme_burger/route/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Dokme Burger',
      debugShowCheckedModeBanner: false,
      initialRoute: ScreenNames.root,
      routes: routes,
      // home: SignUpPage(),
      
    );
  }
}

