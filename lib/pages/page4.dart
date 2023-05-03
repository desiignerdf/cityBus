import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Чиглэл хайх'),
          actions: [
            IconButton(
              onPressed: () {
                showSearch(context: context, delegate: MySearch());
              },
              icon: Icon(Icons.search_sharp),
            )
          ],
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
          centerTitle: true,
        ),
        body: Container(),
      ),
    );
  }
}

class MySearch extends SearchDelegate {
  List<String> searchResults = [
    'Ч:1 5 шар-Офицеруудын ордон',
    'Т:2 Ботаник-5 шар',
    'С:1 Ботаник-45-р сургууль',
    'С:10 5 шар-Тээврийн товчоо',
    'Ч:15 Нисэх-5 шар',
    'Ч:16 Баруун салааны эцэс-10-р хороолол',
    'Ч:31 Улиастайн эцэс-Зам гүүрийн авто бааз',
    'Ч:61 Тэц3-Офицеруудын ордон',
  ];
  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.red,
        ),
        onPressed: () => close(context, null),
      );
  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          icon: const Icon(
            Icons.clear,
            color: Colors.red,
          ),
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
        ),
      ];
  @override
  Widget buildResults(BuildContext context) => Scaffold(
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
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
                  title: Text(
                    query,
                  ),
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
            ],
          ),
        ),
      );
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = searchResults.where((searchResults) {
      final result = searchResults.toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;
            showResults(context);
          },
        );
      },
    );
  }
}
