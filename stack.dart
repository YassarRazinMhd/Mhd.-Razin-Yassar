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
      body: Stack (
          children:[
            Container(
            width: 400,
            height: 400,
            color: Colors.red,

            ), // Container
             Container(
            width: 300,
            height: 300,
            color: Colors.yellow,

            ), // Container
             Container(
            width: 200,
            height: 200,
            color: Colors.green,

            ), // Container
             Container(
            width: 100,
            height: 100,
            color: Colors.blue,

            ), // Container
          ]
        ) // Column
      ), // Scaffold
    ); // MaterialApp
}
}