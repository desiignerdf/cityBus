import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test_project/components/constanrs.dart';
import 'package:test_project/pages/details/page2details.dart';
import 'dart:convert';
import 'dart:core';

import 'package:test_project/pages/search/search.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  Future<List> getData() async {
    final response = await http.get(Uri.parse(manage_chiglel));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Чиглэлийн автобус",
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
            onPressed: () {
              showSearch(context: context, delegate: SearchUser());
            },
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
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
                  leading: const Icon(
                    Icons.directions_bus_filled_outlined,
                    size: 35,
                    color: Colors.white,
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  title: Text(
                    list[i]['DirName'],
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    list[i]['DirMore'],
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          Page2Details(list: list, index: i),
                    ),
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
