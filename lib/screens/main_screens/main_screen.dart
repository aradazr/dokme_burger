

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
  final List <int> _routeHistory = [0];
  int selectedIndex = 0;
  final GlobalKey<NavigatorState> _homeKey = GlobalKey();
  final GlobalKey<NavigatorState> _basketKey = GlobalKey();
  final GlobalKey<NavigatorState> _profileKey = GlobalKey();

    late final map = {
      0:_homeKey,
      1:_profileKey,
      2:_basketKey,

    };
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double bttmNavBar = size.height * .08;

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (map[selectedIndex]!.currentState!.canPop()){
          map[selectedIndex]!.currentState!.pop();
        }else if(_routeHistory.length>1){
          setState(() {
            _routeHistory.removeLast();
            selectedIndex = _routeHistory.last;
          });
        }
      },
      child: Scaffold(
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
                    
                    Navigator(
                      key: _homeKey,
                      onGenerateRoute: (settings) => MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    ),
                    
                    Navigator(
                      key: _profileKey,
                      onGenerateRoute: (settings) => MaterialPageRoute(
                        builder: (context) => ProfileScreen(),
                      ),
                    ),
                    
                    Navigator(
                      key: _basketKey,
                      onGenerateRoute: (settings) => MaterialPageRoute(
                        builder: (context) => BasketScreen(),
                      ),
                    ),
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
                          isActive: selectedIndex == 2,
                          onTap: () {
                            btmNavBarOnPressed(index: 2);
                          }),
                      BtmNavItems(
                          iconImage: 'assets/images/home.png',
                          isActive: selectedIndex == 0,
                          onTap: () {
                            btmNavBarOnPressed(index: 0);
                          }),
                      BtmNavItems(
                          iconImage: 'assets/images/profile.png',
                          isActive: selectedIndex == 1,
                          onTap: () {
                            btmNavBarOnPressed(index: 1);
                          }),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  btmNavBarOnPressed({required index}) {
    setState(() {
      selectedIndex = index;
      _routeHistory.add(selectedIndex);
    });
  }
}
