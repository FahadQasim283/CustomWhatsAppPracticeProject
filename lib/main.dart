import 'package:application1/routes/route_names.dart';
import 'package:application1/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteNames.splashScreenRoute,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
