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
      body: ListView (
          children:[
            Container(
          width: 300,
          height: 300,
          color: Colors.green,
        ), // Container
        Container(
          width: 300,
          height: 300,
          color: Colors.yellow,
        ), // Container
        Container(
          width: 300,
          height: 300,
          color: Colors.blue,
        ), // Container
        Container(
          width: 300,
          height: 300,
          color: Colors.amber,
        )
          ]
        ) // Column
      ), // Scaffold
    ); // MaterialApp
}
}