import 'package:dokme_burger/route/names.dart';
import 'package:dokme_burger/route/routes.dart';
import 'package:dokme_burger/screens/auth/cubit/auth_cubit.dart';
import 'package:dokme_burger/screens/auth/send_sms_screen.dart';
import 'package:dokme_burger/screens/main_screens/main_screen.dart';
import 'package:dokme_burger/screens/product_single_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: MaterialApp(
        title: 'Dokme Burger',
        debugShowCheckedModeBanner: false,
        // initialRoute: ScreenNames.root,
        routes: routes,
        
        home: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            if (state is LoggedInState) {
              return MainScreen();
            } else if(state is LoggedOutState) {
              return SendSmsScreen();
            } else{
              return SendSmsScreen();
            }
            
          },
        ),
      ),
    );
  }
}
