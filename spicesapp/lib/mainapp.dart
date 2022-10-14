import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spicesapp/theme.dart';
import 'screens/discount.dart';
import 'screens/heart.dart';
import 'screens/home.dart';
import 'screens/profile.dart';

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int currentIndex = 0;
  final screens = [
    Home(),
    Discount(),
    Liked(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    queryData.devicePixelRatio;
    queryData.size.width;
    queryData.size.height;
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: KWhiteColor,
        unselectedItemColor: KPrimaryColor.withOpacity(0.3),
        selectedItemColor: KPrimaryColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/homeout.svg',
              color: KPrimaryColor,
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/home.svg',
              color: KPrimaryColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/discountout.svg',
              color: KPrimaryColor,
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/discount.svg',
              color: KPrimaryColor,
            ),
            label: 'Offers',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/cartout.svg',
              color: KPrimaryColor,
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/cart.svg',
              color: KPrimaryColor,
            ),
            label: 'Liked',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/profileout.svg',
              color: KPrimaryColor,
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/profile.svg',
              color: KPrimaryColor,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
