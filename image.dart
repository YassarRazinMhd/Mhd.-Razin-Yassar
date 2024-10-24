import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold( 
        appBar: AppBar(
          title: 
          Text("Image Widget"),
        ), // AppBar
        body: Center(
          child: Container(
            width: 350,
            height: 500,
            color: Colors.amber,
            child: Image(
              fit: BoxFit.fill,
              image: AssetImage("images/image.jpg")
              //image: NetworkImage("https://picsum.photos/350/500")
            ), // Image
          ), // Container
        ), // Center
      ), // Scaffold
    ); // MaterialApp
}
}