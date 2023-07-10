import 'package:application1/routes/route_names.dart';
import 'package:flutter/material.dart';
import '../customWidgets/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameControler = TextEditingController();
  final passwordControler = TextEditingController();
  bool _hideText = true;
  int _tapped = 0;
  Widget _icon = const Icon(Icons.visibility_off_sharp);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(84, 250, 247, 73),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRect(
                  child: Image.asset(
                    "images/logo.png",
                    height: 70,
                    width: 70,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customText(
                        text: "Maintenance",
                        fontWeight: FontWeight.w600,
                        fontSize: 24),
                    customText(
                        text: "Box",
                        fontWeight: FontWeight.w600,
                        textColor: const Color(0xfff97033),
                        fontSize: 24),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Center(child: customText(text: "Login", fontSize: 24)),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: customText(
                  text: "When the exception was thrown,\nthis was the stack"),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: customTextFormField(
                controler: userNameControler,
                label: "User Name or Email",
                prefixIcon: const Icon(Icons.mail_lock_rounded),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: customTextFormField(
                controler: passwordControler,
                label: "Password",
                hideText: _hideText,
                suffixIcon: IconButton(
                  onPressed: () {
                    _tapped += 1;
                    setState(() {
                      if (_tapped % 2 == 0) {
                        _hideText = true;
                        _icon = const Icon(Icons.visibility_off);
                      } else {
                        _hideText = false;
                        _icon = const Icon(Icons.visibility_rounded);
                      }
                    });
                  },
                  icon: _icon,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(height: 40),
            customButton(
              child: const Text("Login"),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RouteNames.homePageRoute,
                );
              },
            ),
            const SizedBox(
              height: 30,
            ),
            Text.rich(
              TextSpan(
                text: "Don't have an account? ",
                children: [
                  WidgetSpan(
                      child: InkWell(
                        // enableFeedback: true,
                        // splashColor: Colors.deepPurple,
                        // hoverColor: const Color.fromARGB(255, 0, 124, 4),
                        highlightColor: const Color.fromARGB(255, 166, 196, 255),
                        
                    onTap: () =>
                        Navigator.pushNamed(context, RouteNames.signupRoute),
                    child: customText(text: "SignUp",textColor: Colors.deepOrange,fontSize: 18,fontWeight: FontWeight.w600),
                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
