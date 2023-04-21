import 'package:flutter/material.dart';
import 'package:test_project/pages/dundah.dart';

import 'package:test_project/pages/page1.dart';
import 'package:test_project/pages/page2.dart';
import 'package:test_project/pages/page3.dart';
import 'package:test_project/pages/page4.dart';

import 'button/fab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0;
  final List<Widget> screenc = [
    const Page1(),
    const Page2(),
    const Page3(),
    Page4(),
    const FAB(),
    const Dundah(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const Page1();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
        height: 60,

        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const Page1();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.notifications,
                          size: 25,
                          color: currentTab == 1 ? Colors.pink : Colors.grey,
                        ),
                        Text(
                          "Гэр",
                          style: TextStyle(
                            color: currentTab == 1 ? Colors.pink : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const Page2();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.local_parking_sharp,
                          size: 25,
                          color: currentTab == 2 ? Colors.pink : Colors.grey,
                        ),
                        Text(
                          "Чиглэл",
                          style: TextStyle(
                            color: currentTab == 2 ? Colors.pink : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const Dundah();
                        currentTab = 5;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.notifications,
                          size: 25,
                          color: currentTab == 5 ? Colors.pink : Colors.grey,
                        ),
                        Text(
                          "Буудал",
                          style: TextStyle(
                            color: currentTab == 5 ? Colors.pink : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const Page3();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.map,
                          size: 25,
                          color: currentTab == 3 ? Colors.pink : Colors.grey,
                        ),
                        Text(
                          "Map",
                          style: TextStyle(
                            color: currentTab == 3 ? Colors.pink : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Page4();
                        currentTab = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.settings,
                          size: 25,
                          color: currentTab == 4 ? Colors.pink : Colors.grey,
                        ),
                        Text(
                          "Тохиргоо",
                          style: TextStyle(
                            color: currentTab == 4 ? Colors.pink : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
