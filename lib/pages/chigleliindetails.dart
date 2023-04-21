import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

// ignore: must_be_immutable
class ChigleliinDetails extends StatefulWidget {
  List list;
  int index;
  ChigleliinDetails({super.key, required this.list, required this.index});

  @override
  State<ChigleliinDetails> createState() => _ChigleliinDetailsState();
}

class _ChigleliinDetailsState extends State<ChigleliinDetails> {
  void confirm() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.list[widget.index]["name"]}"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  "Зогсдог нийтийн тээврүүд",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
