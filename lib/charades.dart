import 'dart:core';
import 'dart:math';
import 'package:flutter/material.dart';
import 'charadesinfo.dart';
import 'menu.dart';

void main() {
  runApp(new charade());
}
class charade extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF0b6f99),
        accentColor: const Color(0xFF0b6f99),
        canvasColor: const Color(0xFFa3d1e4),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String act = 'Hit Randomize to Start';
  String label = "Player1's Turn";
  String score = 'P1: 0 | P2: 0';
  int turn = 1;
  int p1 = 0;
  int p2 = 0;
  @override
  Widget build(BuildContext context) {
    theme: new ThemeData(
      primarySwatch: Colors.blue,
      primaryColor: const Color(0xFF2196f3),
      accentColor: const Color(0xFF0b6f99),
      canvasColor: const Color(0xFFfafafa),
    );
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Charades'),
      ),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.help),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Help()),
            );
          }),
      body:
      new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    label,
                    style: new TextStyle(fontSize:45.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w600,
                        fontFamily: "spicy"),
                  ),

                  new Text(
                    act,
                    style: new TextStyle(fontSize:35.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w400,
                        fontFamily: "comic"),
                  ),

                  new RaisedButton(key:null, onPressed: random,
                      color: const Color(0xFF0b6f99),
                      child:
                      new Text(
                        "Randomize",
                        style: new TextStyle(fontSize:16.0,
                            color: const Color(0xFFfafafa),
                            fontWeight: FontWeight.w400,
                            fontFamily: "comic"),
                      )
                  ),

                  new Text(
                    score,
                    style: new TextStyle(fontSize:26.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w600,
                        fontFamily: "comic"),
                  ),

                  new RaisedButton(key:null, onPressed: correct,
                      color: const Color(0xFF0b6f99),
                      child:
                      new Text(
                        "Press if Correct",
                        style: new TextStyle(fontSize:16.0,
                            color: const Color(0xFFfafafa),
                            fontWeight: FontWeight.w400,
                            fontFamily: "comic"),
                      )
                  ),
                  new RaisedButton(key:null, onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Menu()),
                    );
                  },
                      color: const Color(0xFF0b6f99),
                      child:
                      new Text(
                        "Back",
                        style: new TextStyle(fontSize:16.0,
                            color: const Color(0xFFfafafa),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto"),

                      )
                  ),
                ]


            )
          ]

      ),

    );
  }
  void correct(){
    if (turn%2 + 1 == 1){
      p1++;
    }
    else{
      p2++;
    }
    setState(() {
      score = 'P1: ' + p1.toString() + ' | ' + 'P2: ' + p2.toString();
      if(p1==5){
        act = "Player 1 wins!";
      }
      if(p2==5){
        act="Player 2 wins!";
      }
    });
  }


  void random(){
    turn++;
    List charades = new List(15);
    charades[0] = 'Student';
    charades[1] = 'Robot';
    charades[2] = 'Monkey';
    charades[3] = 'Runner';
    charades[4] = 'Cry Loudly';
    charades[5] = 'Teacher';
    charades[6] = 'Friend';
    charades[7] = 'Sheep';
    charades[8] = 'Soldier';
    charades[9] = 'Car';
    charades[10] = 'Boss';
    charades[11] = 'Employee';
    charades[12] = 'Police';
    Random rand = new Random();
    int i = rand.nextInt(12);

    setState(() {

      act = 'Pretend to be a...\n' + charades[i];
      label = "Player" + (turn%2 + 1).toString() + "'s Turn";
    });
  }
  void info(){

  }
}

