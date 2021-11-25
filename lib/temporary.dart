import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('PokerCat'),
          backgroundColor: Colors.red,
        ),
        body: SafeArea(child: pokerCat()),
      ),
    ),
  );
}

class pokerCat extends StatefulWidget {
  @override
  _pokerCatState createState() => _pokerCatState();
}

class _pokerCatState extends State<pokerCat> {
  int chartNumber = 1;

  void ChangeChart(){setState(() {
    chartNumber = 1;
  });}
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Image.asset('images/chart$chartNumber.jpg')),
        Text(
          'ANTE',
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: FlatButton(
                textColor: Colors.black,
                color: Colors.white,
                child: Text('No Ante',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),),
                onPressed: (){}, ),

            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: FlatButton(
                textColor: Colors.black,
                color: Colors.white,
                child: Text('10% Ante',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),),
                onPressed: (){}, ),

            ),
          ],
        ),
        Text('My Big Blinds'),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                textColor: Colors.black,
                color: Colors.white,
                child: Text('1',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),),
                onPressed:(){
                  ChangeChart();
                } ,

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                textColor: Colors.black,
                color: Colors.white,
                child: Text('2',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),),
                onPressed:(){
                  setState(() {

                  });
                },


              ),
            ),
          ],
        ),


        Text('My Position'),
      ],
    );
  }
}
