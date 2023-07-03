import 'dart:async';
import 'package:application1/routes/routes.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      // Navigator.of(context).pushReplacementNamed(loginRoute);
      Navigator.pushReplacementNamed(context, loginRoute);
    });
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      backgroundColor: Colors.amber[230],
      body: Center(
        child: SizedBox(
          width: 100,
          height: 100,
          child: Image.asset("images/whatsapp.png"),
        ),
      ),
    );
  }
}
