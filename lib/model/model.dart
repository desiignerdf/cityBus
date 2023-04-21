// To parse this JSON data, do
//
//     final userlist = userlistFromJson(jsonString);

import 'dart:convert';

List<BusStop> userlistFromJson(String str) =>
    List<BusStop>.from(json.decode(str).map((x) => BusStop.fromJson(x)));

String userlistToJson(List<BusStop> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BusStop {
  BusStop({
    required this.id,
    required this.DirUseg,
    required this.DirName,
    required this.DirMore,
    required this.BusNum,
    required this.DirOwnerName,
    required this.DirComp,
  });

  int id;
  String DirUseg;
  String DirName;
  String DirMore;
  String BusNum;
  String DirOwnerName;
  String DirComp;

  factory BusStop.fromJson(Map<String, dynamic> json) => BusStop(
        id: json["id"],
        DirUseg: json["DirUseg"],
        DirName: json["DirName"],
        DirMore: json["DirMore"],
        BusNum: json["BusNum"],
        DirOwnerName: json["DirOwnerName"],
        DirComp: json["DirComp"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "DirUseg": DirUseg,
        "DirName": DirName,
        "DirMore": DirMore,
        "BusNum": BusNum,
        "DirOwnerName": DirOwnerName,
        "DirComp": DirComp,
      };
}

// class Address {
//   Address({
//     required this.street,
//     required this.suite,
//     required this.city,
//     required this.zipcode,
//     required this.geo,
//   });

//   String street;
//   String suite;
//   String city;
//   String zipcode;
//   Geo geo;

//   factory Address.fromJson(Map<String, dynamic> json) => Address(
//         street: json["street"],
//         suite: json["suite"],
//         city: json["city"],
//         zipcode: json["zipcode"],
//         geo: Geo.fromJson(json["geo"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "street": street,
//         "suite": suite,
//         "city": city,
//         "zipcode": zipcode,
//         "geo": geo.toJson(),
//       };
// }

// class Geo {
//   Geo({
//     required this.lat,
//     required this.lng,
//   });

//   String lat;
//   String lng;

//   factory Geo.fromJson(Map<String, dynamic> json) => Geo(
//         lat: json["lat"],
//         lng: json["lng"],
//       );

//   Map<String, dynamic> toJson() => {
//         "lat": lat,
//         "lng": lng,
//       };
// }

// class Company {
//   Company({
//     required this.name,
//     required this.catchPhrase,
//     required this.bs,
//   });

//   String name;
//   String catchPhrase;
//   String bs;

//   factory Company.fromJson(Map<String, dynamic> json) => Company(
//         name: json["name"],
//         catchPhrase: json["catchPhrase"],
//         bs: json["bs"],
//       );

//   Map<String, dynamic> toJson() => {
//         "name": name,
//         "catchPhrase": catchPhrase,
//         "bs": bs,
//       };
// }
