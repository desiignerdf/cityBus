import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test_project/chiglel/chiglel15/ch1511.dart';
import 'package:test_project/chiglel/chiglel15/ch1522.dart';
import 'package:test_project/components/constanrs.dart';

// ignore: must_be_immutable
class CH15 extends StatefulWidget {
  const CH15({super.key});

  @override
  State<CH15> createState() => _CH15State();
}

class _CH15State extends State<CH15> {
  int currentTab = 0;
  final List<Widget> screenc = [
    const CH1511(),
    const CH1522(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const CH1511();
  Future<List> getData() async {
    final response = await http.get(Uri.parse(ch15));
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
                        currentScreen = const CH1511();
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
                        currentScreen = const CH1522();
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

