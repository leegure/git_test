import 'package:flutter/material.dart';
import 'package:poker_cat/page/cashgame.dart';
import 'package:poker_cat/page/headsup.dart';
import 'package:poker_cat/page/profile.dart';
import 'package:poker_cat/page/pushfold.dart';
import 'package:poker_cat/page/bankroll.dart';
import 'package:poker_cat/page/test1.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;

  final tabs = [
    Center(child: CashGame(),),
    Center(child: PushFold(),),
    Center(child: Headsup(),),
    Center(child: Bankroll(),),
    Center(child: Profile(),),
    Center(child: Test1(),)

  ];

  void _onItemTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: tabs[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex : _currentIndex,

        type: BottomNavigationBarType.fixed,
        iconSize: 20,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.grey,
            icon: Icon(Icons.attach_money_sharp),
            title: Text('Cash Game',
            ),
          ),
          BottomNavigationBarItem(

            icon: Icon(Icons.grid_on_sharp),
            title: Text('Push Fold'),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('Heads Up'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money_sharp),
            title: Text('Bankroll'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),

        ],

        onTap: _onItemTap,
        selectedFontSize: 13.0,
        unselectedFontSize: 13.0,
      ),
    );
  }
}
