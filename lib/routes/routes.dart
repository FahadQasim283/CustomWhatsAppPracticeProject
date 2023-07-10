
import 'package:application1/routes/route_names.dart';
import 'package:application1/screens/homepage.dart';
import 'package:application1/screens/lockedchats.dart';
import 'package:application1/screens/login.dart';
import 'package:application1/screens/signup.dart';
import 'package:application1/screens/splashscreen.dart';
import 'package:flutter/material.dart';

class Routes {
  
  //creating method for routing
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {

    switch (routeSettings.name) 
    {
      case RouteNames.homePageRoute:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
      case RouteNames.splashScreenRoute:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case RouteNames.loginRoute:
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );
      case RouteNames.signupRoute:
        return MaterialPageRoute(
          builder: (context) => const SignUp(),
        );
      case RouteNames.hiddenchatsRoute:
        return MaterialPageRoute(
          builder: (context) => const HideChats(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text("No route Avaible....."),
            ),
          ),
        );
    }
  }
}

