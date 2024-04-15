import 'package:dokme_burger/main_pages/registration_code_page.dart';
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
      home: RegisterationCodePage(),
      
    );
  }
}

