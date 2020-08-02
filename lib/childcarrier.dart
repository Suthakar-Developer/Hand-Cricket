import 'package:flutter/material.dart';

class ChildCarrier extends StatelessWidget {
  final Image imageCreator;
  final String tossIdentifier;

  ChildCarrier({@required this.imageCreator, this.tossIdentifier});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        imageCreator,
        SizedBox(
          height: 20.0,
        ),
        Card(
          color: Colors.grey,
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(tossIdentifier,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                )),
          ),
        )
      ],
    );
  }
}
