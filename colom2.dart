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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
          children:[
           Container(
          width: 20,
          height: 20,
          color: Colors.green,
        ), // Container
        Container(
          width: 100,
          height: 20,
          color: Colors.yellow,
        ), // Container
        Container(
          width: 250,
          height: 20,
          color: Colors.blue,
        ), // Container
        Container(
          width: 300,
          height: 20,
          color: Colors.amber,

    

            ), // Container
          ]
        ) // Column
      ), // Scaffold
    ); // MaterialApp
}
}