
import 'package:flutter/material.dart';
import 'home.dart';
import 'drawer.dart';



void main() {

  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '몰라',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(

        body: Home(),



      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
