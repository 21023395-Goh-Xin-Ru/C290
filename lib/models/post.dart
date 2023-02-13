// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

List<Post> postFromJson(String str) =>
    List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

String postToJson(List<Post> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Post {
  Post({
    required this.field1,
    required this.field2,
    required this.field3,
    required this.field4,
    required this.field5,
    required this.field6,
    required this.field0,
  });

  String field1;
  String field2;
  int field3;
  double field4;
  bool field5;
  DateTime field6;
  int field0;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        field1: json["field1"],
        field2: json["field2"],
        field3: json["field3"],
        field4: json["field4"]?.toDouble(),
        field5: json["field5"],
        field6: DateTime.parse(json["field6"]),
        field0: json["field0"],
      );

  Map<String, dynamic> toJson() => {
        "field1": field1,
        "field2": field2,
        "field3": field3,
        "field4": field4,
        "field5": field5,
        "field6": field6.toIso8601String(),
        "field0": field0,
      };
}
