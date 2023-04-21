import 'package:flutter/material.dart';
import 'package:test_project/button/buttons.dart';

import '../button/fabcards.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  double xOffset = 0;
  double yOffset = 0;

  bool isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: const Text(
          "Тэмүүлэн",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: GestureDetector(
          child: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_card_rounded,
              color: Colors.white,
            ),
          ),
        ],
        centerTitle: false,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.pink,
                Colors.red,
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.pink,
                  gradient: LinearGradient(
                    colors: [
                      Colors.pink,
                      Colors.red,
                    ],
                  ),
                ),
                // ignore: sized_box_for_whitespace
                child: Container(
                  height: 180,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      FABCards(
                        balance: 20000,
                        cardNUmber: 1234567887654321,
                        expiryMonth: 10,
                        expiryYear: 10,
                      ),
                      FABCards(
                        balance: 2500,
                        cardNUmber: 1234567887654321,
                        expiryMonth: 12,
                        expiryYear: 11,
                      ),
                      FABCards(
                        balance: 5000,
                        cardNUmber: 1234567887654321,
                        expiryMonth: 12,
                        expiryYear: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              flex: 7,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          MyButton(
                            iconImagePath: "assets/page1.png",
                            buttonText: "U-Money сунгах",
                          ),
                          MyButton(
                            iconImagePath: "assets/flutterqr.jpg",
                            buttonText: "Хэтэвч цэнэглэх",
                          ),
                          MyButton(
                            iconImagePath: "assets/page1.png",
                            buttonText: "  Төлбөр төлөх",
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
