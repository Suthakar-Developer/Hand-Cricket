import 'package:flutter/material.dart';

import 'play.dart';
import 'play2.dart';
import 'start.dart';
import 'toss.dart';
import 'tosslost.dart';
import 'tosslost2.dart';
import 'tosswon.dart';
import 'welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Colors.white, primaryColor: Colors.white),
        home: Start(),
        initialRoute: 'Zero',
        routes: {
          'Zero': (context) => Start(),
          'First': (context) => WelcomePage(),
          '2': (context) => Toss(),
          'toss1': (context) => TossWon(),
          'toss2': (context) => TossLost(),
          'toss3': (context) => TossLost2(),
          '3': (context) => PlayBat(),
          '4': (context) => PlayBowl(),
        });
  }
}
