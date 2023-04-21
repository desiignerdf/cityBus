import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

// ignore: must_be_immutable
class Details extends StatefulWidget {
  List list;
  int index;

  Details({super.key, required this.list, required this.index});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  void confirm() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.list[widget.index]["name"]}"),
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
