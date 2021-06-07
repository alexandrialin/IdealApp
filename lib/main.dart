import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:idealfinal/mainScreen.dart';

import 'menu.dart';

void main() {
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF0b6f99),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFF95dcfa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHome createState() => new _MyHome();
}

class _MyHome extends State<MyHomePage> {
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                        children: <Widget>[
                          new Container(
                            child:
                            new Image.asset(
                              'pic/main_image.png',
                              fit:BoxFit.contain,
                              width: 410.0,
                              height: 420.0,
                            ),

                            padding: const EdgeInsets.all(0.0),
                            alignment: Alignment.center,
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
                                          children: <Widget>[
                                            new Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                            )
                                          ]

                                      ),

                                      new Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: <Widget>[
                                            new RaisedButton(key:null, onPressed:buttonPressed,
                                                color: const Color(0xFF0b6f99),
                                                child:
                                                new Text(
                                                  "Tutorial",
                                                  style: new TextStyle(fontSize:42.0,
                                                      color: const Color(0xFFfafafa),
                                                      fontWeight: FontWeight.w200,
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
                                                  "Play",
                                                  style: new TextStyle(fontSize:42.0,
                                                      color: const Color(0xFFfafafa),
                                                      fontWeight: FontWeight.w200,
                                                      fontFamily: "comic"),
                                                )
                                            ),

                                            new RaisedButton(key:null, onPressed: buttonPressed,
                                                color: const Color(0xFF0b6f99),
                                                child:
                                                new Text(
                                                  "Credits",
                                                  style: new TextStyle(fontSize:42.0,
                                                      color: const Color(0xFFfafafa),
                                                      fontWeight: FontWeight.w200,
                                                      fontFamily: "comic"),
                                                )
                                            )
                                          ]

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

        ),

        padding: const EdgeInsets.all(0.0),
        alignment: Alignment.center,
      ),

    );
  }
  void buttonPressed(){
    print('tried');
  }

}
