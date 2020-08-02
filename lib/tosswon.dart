import 'package:flutter/material.dart';
import 'package:hand_cricket/card.dart';

class TossWon extends StatefulWidget {
  @override
  _TossWonState createState() => _TossWonState();
}

class _TossWonState extends State<TossWon> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        backgroundColor: Colors.lightGreen[500],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/gg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Card(
                    color: Colors.lightGreen[400],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'You have won the toss!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  CardMaker(
                    onPressed: () {
                      Navigator.pushNamed(context, '3');
                    },
                    colour: Colors.lightGreen[400],
                    childCreator: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'BATTING',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                            color: Colors.yellowAccent),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  CardMaker(
                    onPressed: () {
                      Navigator.pushNamed(context, '4');
                    },
                    colour: Colors.lightGreen[400],
                    childCreator: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'BOWLING',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                            color: Colors.yellowAccent),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
