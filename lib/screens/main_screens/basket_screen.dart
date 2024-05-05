import 'package:dokme_burger/components/colors-style.dart';
import 'package:dokme_burger/components/strings.dart';
import 'package:dokme_burger/components/text-style.dart';
import 'package:dokme_burger/main.dart';
import 'package:dokme_burger/widgets/app_bar.dart';
import 'package:dokme_burger/widgets/yellow_btn_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BasketScreen extends StatelessWidget {
  BasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorStyles.appBarBackGroundColor,
            appBar: MyAppBar(
              appBarShadowColor: ColorStyles.appBarShadowColor,
              rightIcon: Text(
                AppText.basketText,
                style: AppTextStyle.basketText,
              ),
            ),
            body: Column(
              children: [
                SizedBox(
                  height: size.height * .02,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: size.height * 0.25,
                          width: size.width,
                          decoration: BoxDecoration(
                            color: ColorStyles.burgerInBasKet,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Stack(children: [
                            Positioned(
                              right: 0,
                              bottom: 45,
                              child: Image.asset(
                                'assets/images/inter.png',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 90),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                
                                children: [
                                  SizedBox(height: size.height*.04,),
                                  Text(
                                    'بک اسپیس',
                                    style: AppTextStyle
                                        .burgerNameInsideBlackContainer,
                                  ),
                                  SizedBox(height: size.height*.02,),
                                  Text(
                                    'قیمت : \$170',
                                    style: AppTextStyle
                                        .burgerNameInsideBlackContainer,
                                  ),
                                  SizedBox(height: size.height*.007,),
                                  Divider(
                                    color: ColorStyles.dividerColor,
                                    indent: 15,
                                    endIndent: 80,
                                    thickness: 2,
                                  ),
                                  SizedBox(height: size.height*.02,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(width: size.width *.06,),
                                      Image.asset('assets/images/trash.png'),
                                      SizedBox(width: size.width *.1,),
                                      Image.asset('assets/images/mines.png'),
                                      SizedBox(width: size.width *.01,),
                                      Text(
                                        '1 عدد',
                                        style: AppTextStyle
                                            .burgerNameInsideBlackContainer,
                                      ),
                                      SizedBox(width: size.width *.01,),
                                      Image.asset('assets/images/plus.png'),
                                     
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ]),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: size.height * .01,
                ),

                //! افزودن به سبد خرید
                Container(
                  width: size.width,
                  height: size.height * 0.082,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'مجموع 270,000 تومان',
                        textDirection: TextDirection.rtl,
                        style: AppTextStyle.burgurSingleScreenPrice,
                      ),
                      YellowBtnWidget(
                          textInsideTheYellowContainer: 'افزودن به سبد'),
                    ],
                  ),
                ),
              ],
            )));
  }
}
