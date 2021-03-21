import 'package:flutter/material.dart';

class Mouth {

  final String mouthPath;

  Mouth({@required this.mouthPath});

  Widget build() {
    return Container(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            children: <Widget>[
              SizedBox(
                height: constraints.minHeight / 1.9,
              ),
              Image.asset(mouthPath)
            ],
          );
        },
      ),
    );
  }
}