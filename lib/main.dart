import 'package:flutter/material.dart';
import 'package:flutter_json_complex_query/HomePage.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

void main() async{

  List listOf = await getAllData();


  runApp(MyApp(listOf));
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {

  List listOf;

  MyApp(this.listOf);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(listOf),
    );
  }
}

Future<List> getAllData() async{

  var api = "https://jsonplaceholder.typicode.com/users";

  var data = await http.get(api);

  var jsonData = json.decode(data.body);

  return jsonData;

}
