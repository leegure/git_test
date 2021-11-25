import 'package:flutter/material.dart';

class Headsup extends StatefulWidget {
  @override
  _HeadsupState createState() => _HeadsupState();
}

class _HeadsupState extends State<Headsup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Heads Up'),),
      body: Center(
        child: Text('CashGame',
          style: TextStyle(fontSize: 40),),
      ),
    );
  }
}
