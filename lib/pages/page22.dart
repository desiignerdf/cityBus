import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test_project/const/constants.dart';
import 'package:http/http.dart' as http;

class Page22 extends StatefulWidget {
  const Page22({super.key});

  @override
  State<Page22> createState() => _Page22State();
}

class _Page22State extends State<Page22> {
  Future<List> getData() async {
    final response = await http.get(Uri.parse(ch1));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<List>(
          future: getData(),
          builder: (ctx, ss) {
            if (ss.hasError) {
              print("error");
            }
            if (ss.hasData) {
              return Page22Items(list: ss.data ?? []);
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
class Page22Items extends StatelessWidget {
  List list;
  Page22Items({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // ignore: unnecessary_null_comparison
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (ctx, i) {
        return Column(
          children: [
            ListTile(
              leading: Icon(
                Icons.directions_bus_filled_outlined,
                size: 35,
                color: Colors.red,
              ),
              title: Text(
                list[i]['DundiinBuudal2'],
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            const Divider(
              height: 5,
              thickness: 1,
              color: Colors.grey,
            ),
          ],
        );
      },
    );
  }
}
