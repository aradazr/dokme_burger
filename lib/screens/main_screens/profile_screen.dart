import 'package:dokme_burger/components/colors-style.dart';
import 'package:dokme_burger/components/strings.dart';
import 'package:dokme_burger/components/text-style.dart';
import 'package:dokme_burger/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
    ProfileScreen({super.key, required this.userName, required this.userNumber});


  final String userName;
  final String userNumber;

  @override
  Widget build(BuildContext context) {
    
      Size size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorStyles.profilePageBackGroundColor,
      appBar: MyAppBar(
        appBarShadowColor: ColorStyles.appBarShadowColor,
        rightIcon: Text(
          AppText.userProfile,
          style: AppTextStyle.userProfile,
        ),
      ),
      body: Center(
        child: Column(
          
          children: [
            SizedBox(height: size.height *.06,),
            Image.asset('assets/images/dokme logo.png'),
            
            
            //! User NAme ANd Phone Number
            Padding(
              padding: const EdgeInsets.only(right: 18),
              child: Container(
              
                alignment: Alignment.centerRight,
                height: 90,
                width: double.infinity,
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(userName,
                        style: AppTextStyle.userName,
                        ),
                        Image.asset('assets/images/profile.png'),
                        
                      ],
              
                    ),
                    SizedBox(height: size.height *.01,),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Row(
                        
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(userNumber,
                          style: AppTextStyle.userPhoneNumber,
                          ),
                          SizedBox(width:size.width *.02),
                          Image.asset('assets/images/phone.png',height: 27,),
                          
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ,
          
          SizedBox(height: size.height *.038,)




          ,Container(
            padding: EdgeInsets.only(right: 20),
            alignment: Alignment.centerRight,
             height: size.height * .08,
             width: size.width *.91,
             decoration: BoxDecoration(
              color: ColorStyles.ruleColor,
              borderRadius: BorderRadius.circular(16),
             ),
             child: Text('قوانین و مقررات',
             style: AppTextStyle.ruleText,
             ),
          ),
          SizedBox(height: size.height *.015,),
          Image.asset('assets/images/burgerMyProfile.png',
          height: size.height *.223,
          
          )
          ],
        ),
      ),
    ));
  }
}
