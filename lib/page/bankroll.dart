import 'package:flutter/material.dart';

class Bankroll extends StatefulWidget {
  @override
  _BankrollState createState() => _BankrollState();
}

class _BankrollState extends State<Bankroll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bankroll'),),
      body: Center(
        child: Text('Bankroll',
          style: TextStyle(fontSize: 40),),
      ),

    );
  }
}
