import 'package:flutter/material.dart';

import 'card.dart';

class TossLost2 extends StatefulWidget {
  @override
  _TossLost2State createState() => _TossLost2State();
}

class _TossLost2State extends State<TossLost2> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Material(
        type: MaterialType.transparency,
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/gg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  color: Colors.lightGreen[300],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Text(
                          'Computer has won the toss and elected to BOWL first',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 35.0,
                      ),
                      CardMaker(
                        onPressed: () {
                          Navigator.pushNamed(context, '3');
                        },
                        colour: Colors.lightGreen[300],
                        childCreator: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Card(
                            color: Colors.lightGreen,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'continue',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25.0,
                                    color: Colors.yellowAccent),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
