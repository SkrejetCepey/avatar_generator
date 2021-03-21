import 'package:flutter/material.dart';

class Eyes {

  final String eyesPath;

  Eyes({@required this.eyesPath}) : super();

  Widget build() {
    return Container(
        child: FractionallySizedBox(
          widthFactor: 1,
          heightFactor: .8,
          alignment: Alignment.topCenter,
            child: Image.asset(eyesPath)
        )
    );
  }
}