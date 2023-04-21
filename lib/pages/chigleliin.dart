import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test_project/components/constanrs.dart';

class Chigleliin extends StatefulWidget {
  const Chigleliin({super.key});

  @override
  State<Chigleliin> createState() => _ChigleliinState();
}

class _ChigleliinState extends State<Chigleliin> {
  Future<List> getData() async {
    final response = await http.get(Uri.parse(t2));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('5 шар-Ботаник'),
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
      body: Center(
        child: FutureBuilder<List>(
          future: getData(),
          builder: (ctx, ss) {
            if (ss.hasError) {
              print("error");
            }
            if (ss.hasData) {
              return Items(list: ss.data ?? []);
            } else {
              return Text("Уншиж байна. Та түр хүлээнэ үү...");
            }
          },
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Items extends StatelessWidget {
  List list;
  Items({super.key, required this.list});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // ignore: unnecessary_null_comparison
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (ctx, i) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [
                      Colors.pink,
                      Colors.red,
                    ],
                  ),
                  color: Colors.pink,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.directions_bus_filled_outlined,
                    size: 28,
                    color: Colors.white,
                  ),
                  title: Text(
                    list[i]['t2BuudliinNer2'],
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
