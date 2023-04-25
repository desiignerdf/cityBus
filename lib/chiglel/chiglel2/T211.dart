import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:test_project/components/constanrs.dart';

class T211 extends StatefulWidget {
  const T211({super.key});

  @override
  State<T211> createState() => _T211State();
}

class _T211State extends State<T211> {
  Future<List> getData() async {
    final response = await http.get(Uri.parse(t2));
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
              return T211Items(list: ss.data ?? []);
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
class T211Items extends StatelessWidget {
  List list;
  T211Items({super.key, required this.list});

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
                list[i]['t2BuuliinNer'],
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
