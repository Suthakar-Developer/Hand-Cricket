import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hand_cricket/card.dart';

import 'childcarrier.dart';

class Toss extends StatefulWidget {
  @override
  _TossState createState() => _TossState();
}

class _TossState extends State<Toss> {
  int num;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[900],
        title: Text(
          'TOSS',
          style: TextStyle(
            fontSize: 30.0,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            color: Colors.black38,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/bg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CardMaker(
                          childCreator: Hero(
                            tag: 'fire',
                            child: Container(
                              child: Image(
                                image: AssetImage('images/fire.jpg'),
                                height: 200.0,
                                width: 200.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CardMaker(
                          childCreator: ChildCarrier(
                            imageCreator: Image(
                              image: AssetImage('images/head.jpg'),
                            ),
                            tossIdentifier: 'HEAD',
                          ),
                          onPressed: () {
                            num = Random().nextInt(3) + 1;
                            Navigator.pushNamed(context, 'toss$num');
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 40.0,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CardMaker(
                          onPressed: () {
                            num = Random().nextInt(3) + 1;
                            Navigator.pushNamed(context, 'toss$num');
                          },
                          childCreator: ChildCarrier(
                            imageCreator: Image(
                              image: AssetImage('images/tails.jpeg'),
                            ),
                            tossIdentifier: 'TAIL',
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
