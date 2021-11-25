import 'package:flutter/material.dart';

class CashGame extends StatefulWidget {
  @override
  _CashGameState createState() => _CashGameState();
}

class _CashGameState extends State<CashGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CashGame'),),
      body: Center(
        child: Text('CashGame',
          style: TextStyle(fontSize: 40),),
      ),
    );
  }
}

