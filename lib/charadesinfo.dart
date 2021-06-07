import 'package:flutter/material.dart';
import 'package:idealfinal/charades.dart';

void main() {
  runApp(new Help());
}
class Help extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF0b6f99),
        accentColor: const Color(0xFF2196f3),
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
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Charades Help'),
      ),
      body:
      new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Charades Instructions:\n\n"
                        "Split into two teams.\nOne member of team 1 hits"
                        " the \nrandomize button and acts out the \n given"
                        " word. \n\nGet a person to time 30 sec from the \n opposite team. \n\n If the person can guess "
                        "what is \n being acted out, hit the \n correct button "
                        "and that \n team will get a point. \n\nIf not, hit "
                        "randomize and the other \nteam will guess. Whichever "
                        "team \n reaches 5 points first wins.\n",
                    style: new TextStyle(fontSize:25.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w400,
                        fontFamily: "comic"),
                  )
                ]
            ),
            new RaisedButton(key:null, onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => charade()),
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

      ),

    );
  }
}
