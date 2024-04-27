import 'package:dokme_burger/components/colors-style.dart';
import 'package:dokme_burger/components/text-style.dart';
import 'package:flutter/material.dart';


class SingleBurger extends StatefulWidget {
  const SingleBurger({
    super.key, required this.burgurImage, required this.burgurName, required this.burgurPrice,
    
  });

  final String burgurImage;
  final String burgurName;
  final String burgurPrice;

  @override
  State<SingleBurger> createState() => _SingleBurgerState();
}



int count = 0;

class _SingleBurgerState extends State<SingleBurger> {
  @override

   
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
   



    return Container(
      
      height: size.height *.2,
      width: size.width *.4 ,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(38),
        gradient: LinearGradient(colors: ColorStyles.singleItemBackGroundColor,
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter
        )
      ),
    child: Center(
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          SizedBox(
            
            height: 140,
            
            child: Image.asset(widget.burgurImage,
            fit: BoxFit.cover,)),
      
      
          Text(widget.burgurName,
          style: AppTextStyle.burgerName,
          ),
      
          count==0?Container(
            alignment: Alignment.center,
            height: size.height*.067,
            width: size.width * .36,
            decoration: BoxDecoration(
              color: ColorStyles.burgerPlusBtnColor,
              borderRadius: BorderRadius.circular(44)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8,left: 10),
                  child: Text(widget.burgurPrice+'\$',style: AppTextStyle.priceText,),
                ),
      
                GestureDetector(
                  onTap: () {
                    setState(() {
                      count++;
                    });
                    
                  },
                  child: Container(
                    height: size.height * .3,
                    width: size.width* .12,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black
                    ),
                    child: Icon(Icons.add,color: Colors.white,size: 30,),
                  ),
                )
              ],
            ),
          ):
          Container(
            alignment: Alignment.center,
            height: size.height*.067,
            width: size.width * .36,
            decoration: BoxDecoration(
              color: ColorStyles.burgerPlusBtnColor,
              borderRadius: BorderRadius.circular(44)
            ),
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      count--;
                    });
                    
                  },
                  child: Container(
                    height: size.height * .3,
                    width: size.width* .12,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black
                    ),
                    child: Icon(Icons.remove,color: Colors.white,size: 30,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8,),
                  child: Text(count.toString(),style: AppTextStyle.priceText,),
                ),
      
                GestureDetector(
                  onTap: () {
                    setState(() {
                      count++;
                    });
                    
                  },
                  child: Container(
                    height: size.height * .3,
                    width: size.width* .12,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black
                    ),
                    child: Icon(Icons.add,color: Colors.white,size: 30,),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
    
    );
  }
}