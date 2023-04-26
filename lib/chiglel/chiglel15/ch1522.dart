import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:test_project/components/constanrs.dart';

class CH1522 extends StatefulWidget {
  const CH1522({super.key});

  @override
  State<CH1522> createState() => _CH1522State();
}

class _CH1522State extends State<CH1522> {
  Future<List> getData() async {
    final response = await http.get(Uri.parse(ch15));
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
              return T222Items(list: ss.data ?? []);
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
class T222Items extends StatelessWidget {
  List list;
  T222Items({super.key, required this.list});

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
                list[i]['ch15BuudliinNer2'],
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
