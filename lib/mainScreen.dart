import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:idealfinal/mainScreen.dart';


import 'menu.dart';

void main() {
  runApp(new MyApp1());
}
class MyApp1 extends StatelessWidget {
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
  _MyHomePage createState() => new _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  static AudioCache player = AudioCache();
  String snd = 'ES1050ErnestoHome.mp3';
  String img = 'pic/Picture2.png';
  String x = "Your Teacher, Mrs. Fink, is asking you to take care of your\n"
      "school pet, a Guinea Pig named Ernesto, for the march break.\n"
      "Ernesto is a very friendly Guinea Pig and you enjoy playing\n"
      "with him, he never bites or runs away. What do you do?\n"
      "A. Take Ernesto Home.\n"
      "B. Do not take Ernesto home.\n";
  @override
  Widget build(BuildContext context) {

    return new Scaffold(

      appBar: new AppBar(
        title: new Text('Choose Your Own Adventure'),
      ),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.speaker),
          onPressed: fabPressed),      body:
    new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Image.asset(
                  img,
                  fit:BoxFit.fill,
                  width: 300,
                  height: 300,
                ),
                new Text(
                  x,
                  style: new TextStyle(fontSize:14,
                      color: const Color(0xFF0b6f99),
                      fontWeight: FontWeight.w700,
                      fontFamily: "comic"),
                ),

                new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
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
                            style: new TextStyle(fontSize:14.0,
                                color: const Color(0xFFfafafa),
                                fontWeight: FontWeight.w400,
                                fontFamily: "spicy"),
                          )
                      ),
                      new RaisedButton(key:null, onPressed:buttonPressedA,
                          color: const Color(0xFF0b6f99),
                          child:
                          new Text(
                            "A",
                            style: new TextStyle(fontSize:14.0,
                                color: const Color(0xFFfafafa),
                                fontWeight: FontWeight.w400,
                                fontFamily: "spicy"),
                          )
                      ),

                      new RaisedButton(key:null, onPressed:buttonPressedB,
                          color: const Color(0xFF0b6f99),
                          child:
                          new Text(
                            "B",
                            style: new TextStyle(fontSize:14.0,
                                color: const Color(0xFFfafafa),
                                fontWeight: FontWeight.w400,
                                fontFamily: "spicy"),
                          )
                      )
                    ]
                )
              ]

          )
        ]

    ),

    );
  }
  void buttonPressedA(){
    theme: new ThemeData(
      primarySwatch: Colors.blue,
      primaryColor: const Color(0xFF0b6f99),
      accentColor: const Color(0xFF0b6f99),
      canvasColor: const Color(0xFFa3d1e4),
    );

    List ernesto = new List(7);
    ernesto[0] =
    "Your Teacher, Mrs. Fink, is asking you to take care of your\n"
        "school pet, a Guinea Pig named Ernesto, for the march break.\n"
        "Ernesto is a very friendly Guinea Pig and you enjoy playing\n"
        "with him, he never bites or runs away. What do you do?\n"
        "A. Take Ernesto Home.\n"
        "B. Do not take Ernesto home.\n";
    ernesto[1] =
    "Mrs. Fink hands you Ernesto's cage and gives you a list of\n"
        "rules on how to take care of Ernesto.\n"
        "The list goes as follows:\n\n"
        "- How to Care For Ernesto:\n"
        "- Keep the food bowl full.\n"
        "- Keep the water bottle full.\n"
        "- Keep the cage door closed when you leave Ernesto.\n"
        "- Only feed Ernesto the Guinea Pig food I gave you.\n"
        "\n"
        "The list does not seem overly intimidating so you carry\n"
        "Ernesto’s cage home.When you get home you notice Ernesto\n"
        "has run out of food. What do you do?\n"
        "A. Fill his bowl with your favorite snack.\n"
        "B. Fill his bowl with the food Mrs. Fink gave you.";
    ernesto[2] =
    "Although you have not had to take responsibility for\n"
        "Ernesto, as far as his health and well being, you also\n"
        "did not get to enjoy the experience of having Ernesto\n"
        "in your house.\n Total: 0 points";
    ernesto[3] =
    "You pour Ernesto a bowl of Froot Loops with A&W Root\n"
        "Beer instead of milk. Ernesto eats the whole bowl\n"
        "happily but afterwards you notice he looks kind of\n"
        "sick.You don’t know how to fix it but you are scared\n"
        "if you tell an adult they might get mad at you.\n"
        "What do you do?\n"
        "A. Tell an adult.\n"
        "B. Try to fix the situation yourself.";
    ernesto[4] =
    "You fill the bowl with the food given to you by\n"
        "Mrs. Fink. Ernesto eats from the bowl happily and\n"
        "looks content. You spend the rest of the break\n"
        "playing responsibly with Ernesto, and afterwards,\n"
        "Mrs. Fink is very impressed with what good care\n"
        "you took of Ernesto and you are awarded a gold star.\n Total: 2 points";
    ernesto[5] =
    "You run to your mother and tell her what\n"
        "happened, you and her go to the vet immediately\n"
        "and tell them what happened. Thankfully the vet is\n"
        "able to save Ernesto. You spend the rest of the\n"
        "break playing responsibly with Ernesto, and\n"
        "afterwards, Mrs. Fink is very impressed with what\n"
        "good care you took of Ernesto and you are awarded\n"
        "a gold star.\n Total: 2 points";
    ernesto[6] =
    "You are unsure of what to do, and you sit there\n"
        "trying to help Ernesto feel better but it is not\n"
        "working. Your mother comes over to tell you dinner\n"
        "is ready. As soon as she sees what has happened\n"
        "she picks up Ernesto and takes him to the vet.\n"
        "Ernesto is okay but your mother is upset that\n"
        "you did not seek her help. When you don’t know\n"
        "what to do, always ask a grownup for help. \n Total: 1 point";
    if (x == ernesto[0]){
      snd = 'ES1050TakeErnestoHome.mp3';
      setState(() {
        img = 'pic/Picture1.png';
        x = ernesto[1];
      });
    }
    else if (x == ernesto[1]){
      snd = 'ES1050FillHisBowlWithYourFavouriteSnack.mp3';
      setState(() {
        img = 'pic/Froot-Loops-Cereal-Bowl.png';
        x = ernesto[3];
      });
    }
    else if (x == ernesto[3]){
      snd = 'ES1050TellAnAdult.mp3';
      setState(() {
        img = 'pic/mother.png';
        x = ernesto[5];
      });
    }
  }
  void buttonPressedB() {
    List ernesto = new List(7);
    ernesto[0] =
    "Your Teacher, Mrs. Fink, is asking you to take care of your\n"
        "school pet, a Guinea Pig named Ernesto, for the march break.\n"
        "Ernesto is a very friendly Guinea Pig and you enjoy playing\n"
        "with him, he never bites or runs away. What do you do?\n"
        "A. Take Ernesto Home.\n"
        "B. Do not take Ernesto home.\n";
    ernesto[1] =
    "Mrs. Fink hands you Ernesto's cage and gives you a list of\n"
        "rules on how to take care of Ernesto.\n"
        "The list goes as follows:\n"
        "\n"
        "- How to Care For Ernesto:\n"
        "- Keep the food bowl full.\n"
        "- Keep the water bottle full.\n"
        "- Keep the cage door closed when you leave Ernesto.\n"
        "- Only feed Ernesto the Guinea Pig food I gave you.\n"
        "\n"
        "The list does not seem overly intimidating so you carry\n"
        "Ernesto’s cage home.When you get home you notice Ernesto\n"
        "has run out of food. What do you do?\n"
        "A. Fill his bowl with your favorite snack.\n"
        "B. Fill his bowl with the food Mrs. Fink gave you.";
    ernesto[2] =
    "Although you have not had to take responsibility for\n"
        "Ernesto, as far as his health and well being, you also\n"
        "did not get to enjoy the experience of having Ernesto\n"
        "in your house. \n Total: 0 points";
    ernesto[3] =
    "You pour Ernesto a bowl of Froot Loops with A&W Root\n"
        "Beer instead of milk. Ernesto eats the whole bowl\n"
        "happily but afterwards you notice he looks kind of\n"
        "sick.You don’t know how to fix it but you are scared\n"
        "if you tell an adult they might get mad at you.\n"
        "What do you do?\n"
        "A. Tell an adult.\n"
        "B. Try to fix the situation yourself.";
    ernesto[4] =
    "You fill the bowl with the food given to you by\n"
        "Mrs. Fink. Ernesto eats from the bowl happily and\n"
        "looks content. You spend the rest of the break\n"
        "playing responsibly with Ernesto, and afterwards,\n"
        "Mrs. Fink is very impressed with what good care\n"
        "you took of Ernesto and you are awarded a gold star.\n Total: 2 points";
    ernesto[5] =
    "You run to your mother and tell her what\n"
        "happened, you and her go to the vet immediately\n"
        "and tell them what happened. Thankfully the vet is\n"
        "able to save Ernesto. You spend the rest of the\n"
        "break playing responsibly with Ernesto, and\n"
        "afterwards, Mrs. Fink is very impressed with what\n"
        "good care you took of Ernesto and you are awarded\n"
        "a gold star.\n Total: 2 points";
    ernesto[6] =
    "You are unsure of what to do, and you sit there\n"
        "trying to help Ernesto feel better but it is not\n"
        "working. Your mother comes over to tell you dinner\n"
        "is ready. As soon as she sees what has happened\n"
        "she picks up Ernesto and takes him to the vet.\n"
        "Ernesto is okay but your mother is upset that\n"
        "you did not seek her help. When you don’t know\n"
        "what to do, always ask a grownup for help. \n Total: 1 point";
    if (x == ernesto[0]) {
      snd = 'ES1050DoNotTakeErnestoHome.mp3';
      setState(() {
        img = 'pic/Picture1.png';
        x = ernesto[2];
      });
    }
    else if (x == ernesto[1]) {
      snd = 'ES1050FillHisBowlWithTheFoodYourMrsFinkGaveYou.mp3';
      setState(() {
        img = 'pic/goldstar.png';
        x = ernesto[4];
      });
    }
    else if (x == ernesto[3]) {
      snd = 'ES1050TryToFixTheSituationYourself.mp3';
      setState(() {
        img = 'pic/mother.png';
        x = ernesto[6];
      });
    }
  }
  void fabPressed() {
    print('tried');
    player.play(snd);
    print('tried');
  }
}

