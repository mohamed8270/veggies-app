import 'package:flutter/material.dart';
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
      backgroundColor: Color(0xff1a1c19),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 400,
            decoration: BoxDecoration(
              color: KPrimaryColor,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('assets/images/splash.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Fresh',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      color: Colors.green,
                    ),
                  ),
                  TextSpan(
                    text: '\nVeggies',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: KWhiteColor,
                    ),
                  )
                ]),
              ),
            ),
          ),
          SizedBox(height: 60),
          Text(
            'Get the hygiene and fresh products\nfrom your door!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: KWhiteColor,
            ),
          ),
          SizedBox(height: 50),
          Divider(
            color: Colors.green,
            thickness: 1,
            indent: 1,
            endIndent: 1,
          ),
          SizedBox(height: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign in with',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.green.withOpacity(0.7),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  AuthService().signInWithGoogle();
                },
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Image.asset(
                    'assets/images/google.png',
                    height: 12,
                    width: 12,
                    color: Colors.white,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
