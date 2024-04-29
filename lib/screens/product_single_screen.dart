import 'package:dokme_burger/components/colors-style.dart';
import 'package:dokme_burger/components/strings.dart';
import 'package:dokme_burger/components/text-style.dart';
import 'package:dokme_burger/widgets/app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductSingleScreen extends StatelessWidget {
  const ProductSingleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorStyles.singleProductScreenBackGroundColor,
        appBar: MyAppBar(
          leftIcon: Image.asset('assets/images/basket.png'),
          rightIcon: Row(
            children: [
              Text(
                'تب برگر',
                style: AppTextStyle.burgerNameSingleScreen,
              ),
              SizedBox(
                width: size.width * .03,
              ),
              Icon(
                CupertinoIcons.xmark,
                color: Colors.white,
                size: 35,
              ),
            ],
          ),
          onTabRightIcon: () {
            Navigator.pop(context);
          },
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: size.height * .06,
              ),
              //? image picture
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/tab.png',
                  fit: BoxFit.cover,
                  height: 200,
                ),
              ),




              SizedBox(
                height: size.height * .04,
              ),

              //? مواد تشکیل دهنده
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  AppText.ingredient,
                  style: AppTextStyle.ingredient,
                ),
              ),
              SizedBox(
                height: size.height * .015,
              ),


              //? توضیخات مواد تشکیل دهنده
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: SizedBox(
                  width: size.width * .8,
                  child: Text(
                    maxLines: 2,
                    textAlign: TextAlign.right,
                    '''خیارشور-گوجه-سس تارتار-چدار-برگر گوشت-بیکن''',
                    style: AppTextStyle.ingredientExplain,
                  ),
                ),
              ),


              Divider(
                color: ColorStyles.dividerColor,
                height: size.height *.05,
                thickness: 2,
                indent: 12,
                endIndent: 12,
              ),

              //? توضیخات
               Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  AppText.exPlain,
                  style: AppTextStyle.exPlain,

                ),
              ),
              SizedBox(
                height: size.height * .015,
              ),

              //? نوشته ی توضیحات
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: SizedBox(
                  width: size.width * .9,
                  
                  child: Text(
                    textDirection: TextDirection.rtl,
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.right,
                    'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده.',
                    style: AppTextStyle.burgurExplain,
                  ),
                ),
              ),

              //! کانتینر پایین صفحه
              Container(
                width: double.infinity,
                height: size.height* .082,
                decoration: BoxDecoration(
                  color: Colors.white
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    //! قیمت برگر
                    Text('270,000 تومان',
                    textDirection: TextDirection.rtl,
                    style: AppTextStyle.burgurSingleScreenPrice,
                    ),
                     //!دکمه افزودن به سبد خرید
                    Container(
                      alignment: Alignment.center,
                      height: size.height *.06,
                      width: size.width *.36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: ColorStyles.addToBasketColor,
                        
                      ),
                      child: Text(
                        AppText.addToBasket,
                        style: AppTextStyle.addToBasket,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
