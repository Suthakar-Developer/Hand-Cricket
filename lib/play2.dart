import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class PlayBowl extends StatefulWidget {
  @override
  _PlayBowlState createState() => _PlayBowlState();
}

class _PlayBowlState extends State<PlayBowl> {
  int cnum = 0;
  int start;
  int unum = 0;
  int target = 0;
  var uscore = 0;
  var cscore = 0;
  int wicket = 0;
  int w = 0;
  int cno;
  int uno;
  var alertStyle = AlertStyle(
    animationType: AnimationType.fromTop,
    isCloseButton: false,
    isOverlayTapDismiss: false,
    descStyle: TextStyle(fontWeight: FontWeight.bold),
    animationDuration: Duration(milliseconds: 400),
    alertBorder: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0.0),
      side: BorderSide(
        color: Colors.grey,
      ),
    ),
    titleStyle: TextStyle(
      color: Colors.red,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomPadding: false,
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/gr.jpg'), fit: BoxFit.cover)),
            child: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        margin: EdgeInsets.all(10.0),
                        color: Colors.grey[400],
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(
                                child: CircleAvatar(
                                  backgroundImage:
                                      ExactAssetImage('images/h$cnum.jpg'),
                                  minRadius: 50,
                                  maxRadius: 60,
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Expanded(
                                child: CircleAvatar(
                                  backgroundImage:
                                      ExactAssetImage('images/vs.jpeg'),
                                  minRadius: 50,
                                  maxRadius: 50,
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Expanded(
                                child: CircleAvatar(
                                  backgroundImage:
                                      ExactAssetImage('images/h$unum.jpg'),
                                  minRadius: 50,
                                  maxRadius: 60,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Card(
                          color: Colors.grey[400],
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Computer',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black38),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 27.0,
                        ),
                        Card(
                          color: Colors.grey[400],
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'You',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black38),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Card(
                      margin: EdgeInsets.all(10.0),
                      color: Colors.grey[400],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      unum = 1;
                                      uno = 1;
                                      calculate(1);
                                      start = 1;
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundImage:
                                        ExactAssetImage('images/h1.jpg'),
                                    minRadius: 50,
                                    maxRadius: 60,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      unum = 2;
                                      uno = 2;
                                      calculate(2);
                                      start = 1;
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundImage:
                                        ExactAssetImage('images/h2.jpg'),
                                    minRadius: 50,
                                    maxRadius: 60,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      unum = 3;
                                      uno = 3;
                                      calculate(3);
                                      start = 1;
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundImage:
                                        ExactAssetImage('images/h3.jpg'),
                                    minRadius: 50,
                                    maxRadius: 60,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      unum = 4;
                                      uno = 4;
                                      calculate(4);
                                      start = 1;
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundImage:
                                        ExactAssetImage('images/h4.jpg'),
                                    minRadius: 50,
                                    maxRadius: 60,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      unum = 5;
                                      uno = 5;
                                      calculate(5);
                                      start = 1;
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundImage:
                                        ExactAssetImage('images/h5.jpg'),
                                    minRadius: 50,
                                    maxRadius: 60,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      unum = 6;
                                      uno = 6;
                                      calculate(6);
                                      start = 1;
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundImage:
                                        ExactAssetImage('images/h6.jpg'),
                                    minRadius: 50,
                                    maxRadius: 60,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Card(
                      margin: EdgeInsets.all(10.0),
                      color: Colors.lightGreen[400],
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              '1ST BATTING SCORE  ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.lime[900]),
                            ),
                            Text(
                              'Runs : $cscore',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.lightGreen[900]),
                            ),
                            Text(
                              '2ND BATTING SCORE  ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.lime[900]),
                            ),
                            Text(
                              'Runs : $uscore',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.lightGreen[900]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void calculate(int x) {
    cnum = Random().nextInt(6) + 1;
    cno = cnum;

    if (wicket == 0) {
      if (cno != uno) {
        cscore = cscore + cno;
      } else {
        wicket = 1;
        start = 0;
        target = cscore + 1;
        Alert(
          context: context,
          style: alertStyle,
          type: AlertType.info,
          title: "OUT",
          desc: "You needs $target runs to win.",
          buttons: [
            DialogButton(
              child: Text(
                "CONTINUE",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
            )
          ],
        ).show();
      }
    }
    if (wicket == 1 && start != 0) {
      cno = 0;
      if (cnum != unum && uscore <= cscore) {
        uscore = uscore + uno;
      } else if (cnum == unum) {
        wicket = 2;
        uno = 0;
      }
      if (wicket == 1 && uscore > cscore) {
        w = 2;
      } else if (wicket == 2 && uscore < cscore) {
        w = 1;
      }
      if (w == 1) {
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return WillPopScope(
                onWillPop: () async => false,
                child: new AlertDialog(
                  backgroundColor: Colors.lightGreen[300],
                  title: new Text(
                    'GAME OVER',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20.0,
                        color: Colors.deepOrange[300]),
                    textAlign: TextAlign.center,
                  ),
                  content: new Text(
                    'Computer has won the game.',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20.0,
                        color: Colors.yellow[400]),
                    textAlign: TextAlign.center,
                  ),
                  actions: <Widget>[
                    Center(
                      child: new FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'First');
                        },
                        child: Center(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: new Text(
                                'CONTINUE',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20.0,
                                    color: Colors.lightGreen[600]),
                              ),
                            ),
                            color: Colors.lightGreen[100],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            });
      } else if (w == 2) {
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return WillPopScope(
                onWillPop: () async => false,
                child: new AlertDialog(
                  backgroundColor: Colors.lightGreen[300],
                  title: new Text(
                    'GAME WON',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20.0,
                        color: Colors.lightGreen[600]),
                  ),
                  content: new Text(
                    'You have won the game.',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20.0,
                        color: Colors.yellow[400]),
                    textAlign: TextAlign.center,
                  ),
                  actions: <Widget>[
                    Center(
                      child: new FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'First');
                        },
                        child: Center(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: new Text(
                                'CONTINUE',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20.0,
                                    color: Colors.lightGreen[600]),
                              ),
                            ),
                            color: Colors.lightGreen[100],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            });
      } else if (w == 0 && wicket == 2) {
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return WillPopScope(
                onWillPop: () async => false,
                child: new AlertDialog(
                  backgroundColor: Colors.lightGreen[300],
                  title: new Text(
                    'GAME DRAWN',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                  content: new Text(
                    'Game is drawn',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20.0,
                        color: Colors.yellow[400]),
                    textAlign: TextAlign.center,
                  ),
                  actions: <Widget>[
                    Center(
                      child: new FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'First');
                        },
                        child: Center(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: new Text(
                                'CONTINUE',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20.0,
                                    color: Colors.lightGreen[600]),
                              ),
                            ),
                            color: Colors.lightGreen[100],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            });
      }
    }
  }
}
