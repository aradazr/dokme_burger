import 'package:dokme_burger/components/colors-style.dart';
import 'package:dokme_burger/screens/main_screens/basket_screen.dart';
import 'package:dokme_burger/screens/main_screens/home_screen.dart';
import 'package:dokme_burger/screens/main_screens/profile_screen.dart';
import 'package:dokme_burger/widgets/btm_nav_items.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double bttmNavBar = size.height * .08;
    
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: bttmNavBar,
              child: IndexedStack(
                index: selectedIndex,
                children: [
                  
                  ProfileScreen(),
                  HomeScreen(),
                  BasketScreen()
                ],
              )),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: ColorStyles.navBarColor,
                ),
                height: bttmNavBar,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BtmNavItems(
                      iconImage: 'assets/images/basket.png',
                      isActive: selectedIndex ==0,
                      onTap:(){
                        btmNavBarOnPressed(index: 0);
                        } 
                    ),
                    BtmNavItems(
                      iconImage: 'assets/images/home.png',
                      isActive: selectedIndex ==1,
                      onTap: (){
                        btmNavBarOnPressed(index: 1);
                        } 
                    ),
                    BtmNavItems(
                      iconImage: 'assets/images/profile.png',
                      isActive: selectedIndex ==2,
                      onTap: (){
                        btmNavBarOnPressed(index: 2);
                        } 
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  btmNavBarOnPressed({required index}){
   setState(() {
     selectedIndex = index;
   });
  }
}
