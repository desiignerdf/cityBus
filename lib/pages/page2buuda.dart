import 'package:flutter/material.dart';
import 'package:test_project/chiglel/chiglel15/ch15.dart';
import 'package:test_project/chiglel/chiglel16/ch16.dart';
import 'package:test_project/chiglel/chiglel2/T2.dart';
import 'package:test_project/chiglel/chiglel3/c1.dart';
import 'package:test_project/chiglel/chiglel4/C10.dart';
import 'package:test_project/chiglel/chiglel61/ch61.dart';

import '../chiglel/chiglel1/ch1.dart';
import '../chiglel/chiglel31/ch31.dart';

class Page2Buudal extends StatefulWidget {
  const Page2Buudal({super.key});

  @override
  State<Page2Buudal> createState() => _Page2BuudalState();
}

class _Page2BuudalState extends State<Page2Buudal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Дундын буудал",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: GestureDetector(
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        centerTitle: true,
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
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 5, top: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: [
                    Colors.pink,
                    Colors.red,
                  ],
                ),
                color: Colors.pink,
              ),
              child: ListTile(
                title: Text("Ч:1"),
                subtitle: Text("5 шар-Офицеруудын ордон"),
                trailing: const Icon(Icons.arrow_forward_ios),
                iconColor: Colors.white,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                leading: const Icon(
                  Icons.directions_bus_filled_outlined,
                  size: 35,
                  color: Colors.white,
                ),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => const CH1(),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5, top: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: [
                    Colors.pink,
                    Colors.red,
                  ],
                ),
                color: Colors.pink,
              ),
              child: ListTile(
                title: Text("Т:2"),
                subtitle: Text("Ботаник-5 шар"),
                trailing: const Icon(Icons.arrow_forward_ios),
                iconColor: Colors.white,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                leading: const Icon(
                  Icons.directions_bus_filled_outlined,
                  size: 35,
                  color: Colors.white,
                ),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => const T2(),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5, top: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: [
                    Colors.pink,
                    Colors.red,
                  ],
                ),
                color: Colors.pink,
              ),
              child: ListTile(
                title: Text("С:1"),
                subtitle: Text("Ботаник-45-р сургууль"),
                trailing: const Icon(Icons.arrow_forward_ios),
                iconColor: Colors.white,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                leading: const Icon(
                  Icons.directions_bus_filled_outlined,
                  size: 35,
                  color: Colors.white,
                ),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => const C1(),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5, top: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: [
                    Colors.pink,
                    Colors.red,
                  ],
                ),
                color: Colors.pink,
              ),
              child: ListTile(
                title: Text("С:10"),
                subtitle: Text("5 шар-Тээврийн товчоо"),
                trailing: const Icon(Icons.arrow_forward_ios),
                iconColor: Colors.white,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                leading: const Icon(
                  Icons.directions_bus_filled_outlined,
                  size: 35,
                  color: Colors.white,
                ),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => const C10(),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5, top: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: [
                    Colors.pink,
                    Colors.red,
                  ],
                ),
                color: Colors.pink,
              ),
              child: ListTile(
                title: Text("Ч:15"),
                subtitle: Text("5 шар-Нисэх"),
                trailing: const Icon(Icons.arrow_forward_ios),
                iconColor: Colors.white,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                leading: const Icon(
                  Icons.directions_bus_filled_outlined,
                  size: 35,
                  color: Colors.white,
                ),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => const CH15(),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5, top: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: [
                    Colors.pink,
                    Colors.red,
                  ],
                ),
                color: Colors.pink,
              ),
              child: ListTile(
                title: Text("Ч:16"),
                subtitle: Text("Баруун салааны эцэс-10-р хороолол"),
                trailing: const Icon(Icons.arrow_forward_ios),
                iconColor: Colors.white,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                leading: const Icon(
                  Icons.directions_bus_filled_outlined,
                  size: 35,
                  color: Colors.white,
                ),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => const CH16(),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5, top: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: [
                    Colors.pink,
                    Colors.red,
                  ],
                ),
                color: Colors.pink,
              ),
              child: ListTile(
                title: Text("Ч:31"),
                subtitle: Text("Улиастайн эцэс-Зам гүүрийн авто бааз"),
                trailing: const Icon(Icons.arrow_forward_ios),
                iconColor: Colors.white,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                leading: const Icon(
                  Icons.directions_bus_filled_outlined,
                  size: 35,
                  color: Colors.white,
                ),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => const CH31(),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5, top: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: [
                    Colors.pink,
                    Colors.red,
                  ],
                ),
                color: Colors.pink,
              ),
              child: ListTile(
                title: Text("Ч:61"),
                subtitle: Text("Тэц3-Офицеруудын ордон"),
                trailing: const Icon(Icons.arrow_forward_ios),
                iconColor: Colors.white,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                leading: const Icon(
                  Icons.directions_bus_filled_outlined,
                  size: 35,
                  color: Colors.white,
                ),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => const CH61(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
