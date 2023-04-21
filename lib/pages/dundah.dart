import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test_project/const/constants.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:core';

import 'package:test_project/pages/details.dart';
import 'package:test_project/pages/search.dart';

class Dundah extends StatefulWidget {
  const Dundah({super.key});

  @override
  State<Dundah> createState() => _DundahState();
}

class _DundahState extends State<Dundah> {
  Future<List> getData() async {
    final response = await http.get(Uri.parse(api_url));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Буудлын жагсаалт",
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
              padding: const EdgeInsets.all(5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [
                      Colors.pink,
                      Colors.red,
                    ],
                  ),
                ),
                child: ListTile(
                  leading: const Icon(
                    Icons.directions_bus_filled_outlined,
                    size: 25,
                    color: Colors.white,
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                  title: Text(
                    list[i]['name'],
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          Details(list: list, index: i),
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
