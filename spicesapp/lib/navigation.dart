import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spicesapp/mainapp.dart';
import 'package:spicesapp/screens/notification.dart';
import 'package:spicesapp/theme.dart';

import 'screens/profile.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: KWhiteColor,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Mohamed Ibrahim',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: KPrimaryColor,
              ),
            ),
            accountEmail: Text(
              'ibrahimrasith@gmail.com',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: KPrimaryColor.withOpacity(0.5),
              ),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/fruits/apple.jpeg',
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(color: KWhiteColor),
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/icons/profileout.svg',
              color: KPrimaryColor.withOpacity(0.5),
            ),
            title: Text(
              'Profile',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: KPrimaryColor,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Profile(),
                ),
              );
            },
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/icons/cartout.svg',
              color: KPrimaryColor.withOpacity(0.5),
            ),
            title: Text(
              'My Orders',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: KPrimaryColor,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/icons/discountout.svg',
              color: KPrimaryColor.withOpacity(0.5),
            ),
            title: Text(
              'Discounts',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: KPrimaryColor,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/icons/address.svg',
              color: KPrimaryColor.withOpacity(0.5),
            ),
            title: Text(
              'Address',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: KPrimaryColor,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/icons/notifyout.svg',
              color: KPrimaryColor.withOpacity(0.5),
            ),
            title: Text(
              'Notification',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: KPrimaryColor,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotifyScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/icons/refund.svg',
              color: KPrimaryColor.withOpacity(0.5),
            ),
            title: Text(
              'Refunds',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: KPrimaryColor,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/icons/support.svg',
              color: KPrimaryColor.withOpacity(0.5),
            ),
            title: Text(
              'Customer Support',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: KPrimaryColor,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/icons/info.svg',
              color: KPrimaryColor.withOpacity(0.5),
            ),
            title: Text(
              'General Info',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: KPrimaryColor,
              ),
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
