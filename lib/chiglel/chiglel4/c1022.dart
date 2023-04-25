import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:test_project/components/constanrs.dart';

class C1022 extends StatefulWidget {
  const C1022({super.key});

  @override
  State<C1022> createState() => _C1022State();
}

class _C1022State extends State<C1022> {
  Future<List> getData() async {
    final response = await http.get(Uri.parse(c10));
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
                list[i]['c10BuudliinNer2'],
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
