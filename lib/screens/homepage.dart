import 'package:application1/customWidgets/widgets.dart';
import 'package:application1/routes/route_names.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String name = "Fahad";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.sizeOf(context).width;
    double width = MediaQuery.sizeOf(context).width;
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: const Color.fromARGB(168, 101, 166, 122),
          appBar: AppBar(
            title: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.hiddenchatsRoute);
                },
                child: customText(
                    text: "WhatsApp", textColor: Colors.white, fontSize: 18)),
            actions: [
              const Icon(Icons.search),
              PopupMenuButton(
                constraints: BoxConstraints(minWidth: width / 5),
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem(
                      child: Text("New Group"),
                    ),
                    const PopupMenuItem(
                      child: Text("Settings"),
                    ),
                    PopupMenuItem(
                      child: const Text("Logout"),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ];
                },
              ),
              const SizedBox(
                width: 10,
              ),
            ],
            backgroundColor: Colors.teal,
            bottom: TabBar(
              unselectedLabelColor: Colors.black54,
              padding: EdgeInsets.symmetric(horizontal: width / 15),
              tabs: const [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text("Chats"),
                ),
                Tab(
                  child: Text("Groups"),
                ),
                Tab(
                  child: Text("Calls"),
                ),
              ],
              automaticIndicatorColorAdjustment: true,
              indicatorColor: Colors.white,
            ),
          ),
          drawer: customDrawer(),
          body: const TabBarView(children: [
            Text("Camera"),
            Text("chats"),
            Text("Groups"),
            Text("Calls"),
          ]),
        ),
      ),
    );
  }
}
