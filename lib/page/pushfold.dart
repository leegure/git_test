import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:customtogglebuttons/customtogglebuttons.dart';

import 'dart:math';

class PushFold extends StatefulWidget {
  @override
  _PushFoldState createState() => _PushFoldState();
}

class _PushFoldState extends State<PushFold> {
  List<bool> anteSelected = List.generate(2, (index) => false);

  List<bool> positionSelected = List.generate(8, (index) => false);

  int anteIndex = 0;
  int blindIndex = 0;
  int positionIndex = 0;


  List<int> listInt=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PushFold'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: Image(
                image: AssetImage(
                    'images/${anteIndex.toString()}a_sb_${blindIndex.toString()}bb.jpg'),
              ),
              width: 500,
            ),
            Text(
              'Ante',
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ToggleButtons(
                    constraints:
                    BoxConstraints(minWidth: 40, maxWidth: 70, minHeight: 30),
                    children: [
                      Text('No Ante'),
                      Text('10% Ante'),
                    ],
                    onPressed: (button1) {
                      setState(() {
                        anteIndex = button1;
                        for (int anteIndex = 0;
                            anteIndex < anteSelected.length;
                            anteIndex++) {
                          if (anteIndex == button1) {
                            anteSelected[anteIndex] = true;
                          } else {
                            anteSelected[anteIndex] = false;
                          }
                        }
                      });
                    },
                    isSelected: anteSelected),
              ),
            ),
            Text(
              'My Blinds',
            ),
            Expanded(
              child: Container(
                child: GridView.count(
                    crossAxisCount: 8,
                    children: listInt.map((e){
                      return ElevatedButton(
                          style: ElevatedButton.styleFrom(

                            primary: blindIndex==e? Colors.orange:Colors.grey,
                          ),


                          onPressed: (){
                            setState(() {

                              blindIndex=e;
                            });
                          },
                          child: Text(e.toString()));
                    }).toList()
                ),
              ),
            ),

            Text(
              'My Position',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ToggleButtons(
                  constraints:
                  BoxConstraints(minWidth: 43, maxWidth: 60, minHeight: 30),
                  children: [
                    Text(
                      "UTG",

                    ),
                    Text(
                      "UTG1",

                    ),
                    Text(
                      "UTG2",

                    ),
                    Text(
                      "MP",

                    ),
                    Text(
                      "HJ",

                    ),
                    Text(
                      "CO",

                    ),
                    Text(
                      "BTN",

                    ),
                    Text(
                      "SB",

                    ),

                  ],
                  onPressed: (button3) {
                    setState(() {
                      positionIndex = button3;
                      for (int positionIndex = 0;
                          positionIndex < positionSelected.length;
                          positionIndex++) {
                        if (positionIndex == button3) {
                          positionSelected[positionIndex] = true;
                        } else {
                          positionSelected[positionIndex] = false;
                        }
                      }
                    });
                  },
                  isSelected: positionSelected),
            ),
            SizedBox(),

          ],
        ),
      ),
    );
  }
}
