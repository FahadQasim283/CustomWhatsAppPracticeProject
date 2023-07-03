import 'package:application1/customWidgets/widgets.dart';
import 'package:flutter/material.dart';

class HideChats extends StatelessWidget {
  const HideChats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(color: Colors.black45),
          width: double.infinity,
          height: 100,
          child: customButton(
            child: const Text("bottom sheet"),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => const Text("sheet data"),
              );
            },
          ),
        ),
      ),
    );
  }
}
