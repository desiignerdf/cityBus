import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test_project/chiglel/chiglel61/ch6111.dart';
import 'package:test_project/chiglel/chiglel61/ch6122.dart';
import 'package:test_project/components/constanrs.dart';

// ignore: must_be_immutable
class CH61 extends StatefulWidget {
  const CH61({super.key});

  @override
  State<CH61> createState() => _CH61State();
}

class _CH61State extends State<CH61> {
  int currentTab = 0;
  final List<Widget> screenc = [
    const CH6111(),
    const CH6122(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const CH6111();
  Future<List> getData() async {
    final response = await http.get(Uri.parse(ch61));
    return json.decode(response.body);
  }

  void confirm() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Дундын буудал",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: GestureDetector(
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
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
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        height: 60,

        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const CH6111();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Эхлэх цэг",
                          style: TextStyle(
                            color: currentTab == 1 ? Colors.pink : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const CH6122();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Эцсийн цэг",
                          style: TextStyle(
                            color: currentTab == 2 ? Colors.pink : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:http/http.dart' as http;
// import 'package:test_project/const/constants.dart';
// import 'package:test_project/pages/page11.dart';
// import 'package:test_project/pages/page22.dart';
// import 'package:test_project/pages/search.dart';

// class Page2Details extends StatefulWidget {
//   List list;
//   int index;

//   Page2Details({super.key, required this.list, required this.index});

//   @override
//   State<Page2Details> createState() => _Page2DetailsState();
// }

// class _Page2DetailsState extends State<Page2Details> {
//   int currentTab = 0;
//   final List<Widget> screenc = [
//     const Page11(),
//     const Page22(),
//   ];
//   final PageStorageBucket bucket = PageStorageBucket();
//   Widget currentScreen = const Page11();
//   Future<List> getData() async {
//     final response = await http.get(Uri.parse(dundiin_buudal_awah));
//     return json.decode(response.body);
//   }

//   void confirm() {}

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Дундын буудал",
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//         leading: GestureDetector(
//           child: IconButton(
//             icon: const Icon(
//               Icons.arrow_back_ios,
//               color: Colors.white,
//             ),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//         ),
//         centerTitle: true,
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
//       body: Center(
//         child: FutureBuilder<List>(
//           future: getData(),
//           builder: (ctx, ss) {
//             if (ss.hasError) {
//               print("error");
//             }
//             if (ss.hasData) {
//               return Items(list: ss.data ?? []);
//             } else {
//               return Text("Уншиж байна. Та түр хүлээнэ үү...");
//             }
//           },
//         ),
//       ),
//     );
//   }
// }

// // ignore: must_be_immutable
// class Items extends StatelessWidget {
//   List list;
//   Items({super.key, required this.list});
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       // ignore: unnecessary_null_comparison
//       itemCount: list == null ? 0 : list.length,
//       itemBuilder: (ctx, i) {
//         return Column(
//           children: [
//             ListTile(
//               leading: Column(
//                 children: const <Widget>[
//                   Icon(
//                     Icons.track_changes,
//                     size: 35,
//                     color: Colors.red,
//                   ),
//                 ],
//               ),
//               title: Text(
//                 list[i]['DundiinBuudal'],
//                 style:
//                     const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
//               ),
//             ),
//             const Divider(
//               height: 5,
//               thickness: 1,
//               color: Colors.grey,
//             ),
//           ],
//         );
//       },
//     );
//   }
// }

