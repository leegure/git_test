import 'package:flutter/material.dart';

class Test1 extends StatefulWidget {
  @override
  _Test1State createState() => _Test1State();
}
List testList=[1,1,1,1,1,1,1,1,1];
List<Color> colortest=[Colors.red,Colors.orange,Colors.green];

class _Test1State extends State<Test1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('test'),),
      body: Column(
        children: [
          Container(
            height: 500,
            padding: EdgeInsets.all(10),

            child: GridView.count(

                crossAxisCount: 3,
              children: testList.map((e){
                return Container(
                  width: 20,
                  height: 20,

                  child: Text(e.toString()),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: colortest[e-1],
                  ),
                );
              }).toList()


            ),
          ),
          Row(
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  testList=[1,2,3,1,2,3,1,1,1,];
                });

              }, child: Text("11")),
              Spacer(),
              ElevatedButton(onPressed: (){
                setState(() {
                  testList=[1,1,3,1,2,3,2,2,2,];
                });
              }, child: Text("22")),
            ],
          )
        ],
      ),
    );;
  }
}
