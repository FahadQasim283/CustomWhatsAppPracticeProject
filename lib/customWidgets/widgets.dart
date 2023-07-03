import 'package:flutter/material.dart';

Widget customDrawer() {
  return Drawer(
    backgroundColor: Colors.teal,
    elevation: 10,
    shadowColor: Colors.amber,
    child: ListView(children: [
      DrawerHeader(
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
        child: UserAccountsDrawerHeader(
          decoration: const BoxDecoration(
            boxShadow:  [
              BoxShadow(color: Color.fromARGB(227, 255, 7, 131)),
              BoxShadow(color: Color.fromARGB(172, 255, 193, 7)),
              BoxShadow(color: Color.fromARGB(62, 7, 255, 69)),

            ],
          ),
          accountName: customText(text: "Fahad Qasim"),
          accountEmail: customText(text: "FahadQasim3310@gmail.com"),
          currentAccountPicture: const CircleAvatar(
              foregroundImage: AssetImage('images/logo.png')),
        ),
      )
    ]),
  );
}

Widget customTextFormField({
  String? hintText,
  double? hintTextFontSize,
  String label = "",
  Icon? prefixIcon,
  IconButton? suffixIcon,
  TextInputType keyboardtype = TextInputType.text,
  bool hideText = false,
  required controler,
}) {
  return TextFormField(
    controller: controler,
    keyboardType: keyboardtype,
    obscureText: hideText,
    obscuringCharacter: "*",
    enableSuggestions: false,
    autocorrect: false,
    decoration: InputDecoration(
      // counterText: "text",
      hintText: hintText,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      hintStyle: TextStyle(fontSize: hintTextFontSize),
      label: Text(label),
      fillColor: const Color.fromARGB(221, 235, 235, 235),
      filled: true,
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
      ),
    ),
  );
}

Widget customText(
    {text = "",
    double? fontSize = 16,
    TextAlign textAlign = TextAlign.center,
    Color textColor = Colors.black,
    FontWeight fontWeight = FontWeight.w400}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: fontSize,
      color: textColor,
      fontWeight: fontWeight,
    ),
    textAlign: textAlign,
  );
}

Widget customButton(
    {required Widget? child,
    required VoidCallback onPressed,
    Color backgroundColor = const Color(0xfff27523)}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ButtonStyle(
      alignment: Alignment.center,
      minimumSize: const MaterialStatePropertyAll(
        Size(100, 40),
      ),
      overlayColor:
          const MaterialStatePropertyAll(Color.fromARGB(255, 175, 175, 176)),
      splashFactory: InkRipple.splashFactory,
      elevation: const MaterialStatePropertyAll(6),
      backgroundColor:
          MaterialStateColor.resolveWith((states) => backgroundColor),
    ),
    child: child,
  );
}
