import 'package:flutter/material.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
    @override
    Widget build (BuildContext context) {
    // TODO: implement build
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
      title: Text("My App"),
      ), // AppBar
      body: Column (
        crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Container(
            width: 200,
            height: 20,
            color: const Color.fromARGB(255, 158, 9, 163),
            ), // Container
            Container(
            width: 200,
            height: 20,
            color: const Color.fromARGB(255, 255, 226, 5),
            ),
            Container(
            width: 200,
            height: 20,
            color: const Color.fromARGB(255, 215, 37, 37),
            ),
            Container(
            width: 200,
            height: 20,
            color: const Color.fromARGB(255, 158, 9, 163),
            ),
          ]
        ) // Column
      ), // Scaffold
    ); // MaterialApp
  }
}
