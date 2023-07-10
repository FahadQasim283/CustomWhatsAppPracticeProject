import 'package:application1/customWidgets/widgets.dart';
import 'package:flutter/material.dart';

import '../routes/route_names.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final nameControler = TextEditingController();
  final emailControler = TextEditingController();
  final phoneControler = TextEditingController();
  final passwordControler = TextEditingController();
  final ageControler = TextEditingController();
  int _tapped = 0;
  Widget _icon = const Icon(Icons.visibility_off);
  bool hideText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ClipRRect(
            borderRadius:
                const BorderRadius.vertical(bottom: Radius.circular(82)),
            child: Image.asset(
              "images/signup.png",
            ),
          ),
        ),
        bottomOpacity: 0,
        backgroundColor: Colors.white,
        elevation: 0.0,
        toolbarHeight: MediaQuery.sizeOf(context).height / 4,
        shape: const OutlineInputBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(82),
            ),
            borderSide: BorderSide.none),
      ),
      backgroundColor: const Color.fromARGB(84, 250, 247, 73),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: customTextFormField(
                  label: "Name",
                  controler: nameControler,
                  keyboardtype: TextInputType.name,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: customTextFormField(
                  label: "Email",
                  controler: emailControler,
                  keyboardtype: TextInputType.emailAddress,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: customTextFormField(
                  controler: phoneControler,
                  keyboardtype: TextInputType.phone,
                  label: "Enter Phone Number",
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: customTextFormField(
                  controler: passwordControler,
                  label: "Password",
                  hideText: hideText,
                  suffixIcon: IconButton(
                    onPressed: () {
                      _tapped += 1;
                      setState(() {
                        if (_tapped % 2 == 0) {
                          _icon = const Icon(Icons.visibility_off);
                          hideText = true;
                        } else {
                          _icon = const Icon(Icons.visibility);
                          hideText = false;
                        }
                      });
                    },
                    icon: _icon,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              customButton(
                child: const Text("Login"),
                onPressed: () => Navigator.pushNamed(
                  context,
                  RouteNames.loginRoute,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
