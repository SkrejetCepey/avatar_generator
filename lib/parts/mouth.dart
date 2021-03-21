import 'package:flutter/material.dart';

class Mouth {

  final String mouthPath;

  Mouth({@required this.mouthPath});

  Widget build() {
    return Container(
        child: FractionallySizedBox(
          alignment: Alignment.topCenter,
          widthFactor: 1,
            heightFactor: 1.2,
            child: Image.asset(mouthPath)
        )
    );
  }
}