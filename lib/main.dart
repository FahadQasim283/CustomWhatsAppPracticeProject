import 'package:application1/routes/route_names.dart';
import 'package:application1/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget 
{
  const MyApplication({super.key});
  @override
  Widget build(BuildContext context) 
  {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteNames.splashScreenRoute,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
