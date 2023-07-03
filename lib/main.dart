import 'package:application1/routes/routes.dart';
import 'package:application1/screens/homepage.dart';
import 'package:application1/screens/lockedchats.dart';
import 'package:application1/screens/login.dart';
import 'package:application1/screens/signup.dart';
import 'package:application1/screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main() 
{
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget 
{
  const MyWidget({super.key});
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: splashScreenRoute,
      routes: {
        homePageRoute: (context) => const HomePage(),
        loginRoute: (context) => const LoginPage(),
        signupRoute: (context) => const SignUp(),
        hiddenchatsRoute: (context) => const HideChats(),
        splashScreenRoute: (context) => const SplashScreen(),
      },
    );
  }
}
