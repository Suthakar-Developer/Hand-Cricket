import 'package:flutter/material.dart';

class CardMaker extends StatelessWidget {
  final Color colour;
  final Widget childCreator;
  final Function onPressed;
  CardMaker({this.childCreator, this.colour, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: childCreator,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(5.0)),
      ),
    );
  }
}