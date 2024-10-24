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
            ListTile(
            title:Text ("Hanif DInata"),
            subtitle: Text("Asal Jawir (Jawa Ireng)"),
            leading: CircleAvatar(),
            trailing: Text("19.00 pm"),
            dense: true,
            tileColor: Colors.amber,
            ), 
            Divider(
              color: Colors.amber,
            ),
          ]
        ) // Column
      ), // Scaffold
    ); // MaterialApp
}
}