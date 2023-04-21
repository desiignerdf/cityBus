import 'package:flutter/material.dart';

class SearchedData extends StatefulWidget {
  const SearchedData({super.key});

  @override
  State<SearchedData> createState() => _SearchedDataState();
}

class _SearchedDataState extends State<SearchedData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(20),
        child: ListView(children: [
          Container(
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
              title: const Text("Ч:1"),
              subtitle: const Text("5 шар-Офицеруудын ордон"),
              trailing: const Icon(Icons.arrow_forward_ios),
              leading: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Icon(Icons.directions_bus_filled_outlined),
              ),
              onTap: () {},
              iconColor: Colors.white,
              textColor: Colors.white,
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
