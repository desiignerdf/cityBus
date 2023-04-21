import 'package:flutter/material.dart';

class FAB extends StatelessWidget {
  const FAB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Дашмаа",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
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
    );
  }
}
