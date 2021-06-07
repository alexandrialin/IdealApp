import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:idealfinal/charades.dart';
import 'package:idealfinal/mainScreen.dart';

void main() {
  runApp(new Menu());
}
class Menu extends StatelessWidget {

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
  static AudioCache player = AudioCache();


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('IDEAL APP'),
      ),
      body:
      new Container(
        child:
        new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Image.asset(
                      'pic/main_image.png',
                      fit: BoxFit.fill,
                      width: 385.0,
                      height: 150.0,
                    ),

                  ]

              ),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Container(
                      child: new Scaffold(
                        floatingActionButton: new FloatingActionButton(
                            child: new Icon(Icons.speaker),
                            onPressed: fabPressed),
                      ),

                      padding: const EdgeInsets.all(0.0),
                      alignment: Alignment.center,
                      width: 50.0,
                      height: 50.0,
                    )
                  ]

              ),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                new Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                ),

                                new Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment
                                        .center,

                                    children: <Widget>[
                                      new Text(
                                        "Choose the Game You Want to Play\n",
                                        style: new TextStyle(fontSize: 26.0,
                                            color: const Color(0xFF000000),
                                            fontWeight: FontWeight.w300,
                                            fontFamily: "comic"),
                                      ),
                                      new Image.asset(
                                        'pic/stickman-illustration-kids-playing-charades-260nw-478267204.webp',
                                        fit: BoxFit.fill,
                                        width: 100.0,
                                        height: 100.0,
                                      ),
                                      new Text(
                                        " A team activity with a group of friends",
                                        style: new TextStyle(fontSize: 15.0,
                                            color: const Color(0xFF000000),
                                            fontWeight: FontWeight.w300,
                                            fontFamily: "GoogleFonts.lato"),
                                      ),

                                      new RaisedButton(
                                          key: null, onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => charade()),
                                        );
                                      },
                                          color: const Color(0xFF0b6f99),
                                          child:
                                          new Text(
                                            "   Charades   ",
                                            style: new TextStyle(fontSize: 18.0,
                                                color: const Color(0xFFfafafa),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "spicy"),
                                          )
                                      ),
                                      new Image.asset(
                                        'pic/vector-business-man-front-two-260nw-708643105.webp',
                                        fit: BoxFit.fill,
                                        width: 100.0,
                                        height: 100.0,
                                      ),
                                      new Text(
                                        "A game of social responsibility",
                                        style: new TextStyle(fontSize: 15.0,
                                            color: const Color(0xFF000000),
                                            fontWeight: FontWeight.w300,
                                            fontFamily: "GoogleFonts.lato"),
                                      ),


                                      new RaisedButton(
                                          key: null, onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => MyApp1()),
                                        );
                                      },
                                          color: const Color(0xFF0b6f99),
                                          child:
                                          new Text(
                                            "Choose Your\nOwn Adventure",
                                            style: new TextStyle(fontSize: 18.0,
                                                color: const Color(0xFFfafafa),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "spicy"),
                                          )
                                      ),

                                      new Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .start,
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment
                                            .center,
                                      )
                                    ]

                                ),

                                new Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                ),

                                new Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                )
                              ]

                          )
                        ]

                    )
                  ]

              ),

              new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
              ),

              new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
              )
            ]

        ),

        padding: const EdgeInsets.all(0.0),
        alignment: Alignment.center,
      ),

    );
  }

  void fabPressed() {
    player.play('ES1050ChooseWhatGame.mp3');
  }
}
