import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test_project/const/constants.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:core';

import 'package:test_project/pages/page2details.dart';
import 'package:test_project/pages/search.dart';

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
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:test_project/const/constants.dart';
// import 'package:test_project/model/model.dart';

// class Page2 extends StatefulWidget {
//   const Page2({super.key});

//   @override
//   State<Page2> createState() => _Page2State();
// }

// class _Page2State extends State<Page2> {
//   List<BusStop> busStop = [];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           "Б У У Д А Л",
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//         leading: IconButton(
//           icon: const Icon(
//             Icons.menu,
//             color: Colors.white,
//           ),
//           onPressed: () {},
//         ),
//         flexibleSpace: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Colors.pink,
//                 Colors.red,
//               ],
//             ),
//           ),
//         ),
//       ),
//       body: FutureBuilder(
//         future: getData(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return ListView.builder(
//                 itemCount: busStop.length,
//                 itemBuilder: (context, index) {
//                   return Container(
//                     height: 200,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12),
//                         color: Colors.white,
//                         border: Border.all(color: Colors.pinkAccent)),
//                     padding: const EdgeInsets.symmetric(
//                         vertical: 10, horizontal: 10),
//                     margin: const EdgeInsets.all(10),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "id:  ${busStop[index].id}",
//                           style: TextStyle(fontSize: 15),
//                         ),
//                         Text(
//                           "name:  ${busStop[index].DirUseg}",
//                           maxLines: 1,
//                           style: TextStyle(fontSize: 15),
//                         ),
//                         Text(
//                           "email:  ${busStop[index].DirName}",
//                           maxLines: 1,
//                           style: TextStyle(fontSize: 15),
//                         ),
//                         Text(
//                           "phone:  ${busStop[index].DirMore}",
//                           maxLines: 1,
//                           style: TextStyle(fontSize: 15),
//                         ),
//                         Text(
//                           "address:  ${busStop[index].BusNum}",
//                           maxLines: 1,
//                           style: TextStyle(fontSize: 15),
//                         ),
//                         Text(
//                           "website:  ${busStop[index].DirOwnerName}",
//                           maxLines: 1,
//                           style: TextStyle(fontSize: 15),
//                         ),
//                         Text(
//                           "company:  ${busStop[index].DirComp}",
//                           maxLines: 1,
//                           style: TextStyle(fontSize: 15),
//                         ),
//                       ],
//                     ),
//                   );
//                 });
//           } else {
//             return Center(
//               child: Text('Уншиж байна түр хүлээнэ үү...'),
//             );
//           }
//         },
//       ),
//     );
//   }

//   List<BusStop> parseBusStop(String responseBody) {
//     var list = json.decode(responseBody) as List<dynamic>;
//     var posts = list.map((model) => BusStop.fromJson(model)).toList();
//     return posts;
//   }

//   Future<List<BusStop>> getData() async {
//     print('API дуудаж байна түр хүлээнэ үү...');
//     final response = await http.get(Uri.parse(manage_chiglel));

//     var data = jsonDecode(response.body.toString());
//     if (response.statusCode == 200) {
//       for (Map<String, dynamic> index in data) {
//         busStop.add(BusStop.fromJson(index));
//       }
//       print("Амжилттай дуудагдлаа...");
//       return busStop;
//     } else {
//       return busStop;
//     }
//   }
// }
