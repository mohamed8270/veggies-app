import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spicesapp/theme.dart';
import 'auth_services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        padding: EdgeInsets.only(
            left: 24,
            right: 24,
            top: size.height * 0.2,
            bottom: size.height * 0.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Hello, \nGoogle sign in",
                style: TextStyle(fontSize: 30)),
            GestureDetector(
                onTap: () {
                  AuthService().signInWithGoogle();
                },
                child: SvgPicture.asset(
                  'assets/icons/google.svg',
                  height: 18,
                  width: 18,
                  fit: BoxFit.scaleDown,
                  color: KPrimaryColor,
                )),
          ],
        ),
      ),
    );
  }
}
