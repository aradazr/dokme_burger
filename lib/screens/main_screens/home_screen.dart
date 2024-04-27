

import 'package:dokme_burger/components/colors-style.dart';
import 'package:dokme_burger/components/strings.dart';
import 'package:dokme_burger/widgets/app_bar.dart';
import 'package:dokme_burger/widgets/single_burgur.dart';
import 'package:dokme_burger/widgets/welcome_to_dokme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          backgroundColor: ColorStyles.homePageBackGroundColor,
          appBar: MyAppBar(
            
            rightIcon: Image.asset(
              'assets/images/menu.png', 
              ),
              leftIcon: Icon(CupertinoIcons.search_circle,
              color: Colors.grey,
              size:45 ,
              ),
              ),

          
          body: Center(
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
                
                children: [
                  WelcomeToDokme(),
                  SizedBox(
                    height: size.height*.714,
                    width: size.width *.96,
                    child: GridView.builder(
                      
                      itemCount: 20,
                      
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 7,
                            mainAxisSpacing: 4,
                            mainAxisExtent: 280
                            
                            ),
                        itemBuilder: (context, index) {
                          return SingleBurger(burgurImage: 'assets/images/shift.png',
                           burgurName: AppText.burgerName,
                            burgurPrice: '170',);
                        },),
                  )
                ],
              ),
            ),
          )),
    );
  }
}




