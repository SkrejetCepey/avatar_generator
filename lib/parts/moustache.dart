import 'package:flutter/material.dart';

class Moustache {

  final String moustachePath;

  Moustache({@required this.moustachePath});

  Widget build() {
    return Container(
        child: FractionallySizedBox(
          heightFactor: 1.1,
          widthFactor: 1.0,
          alignment: Alignment.topCenter,
            child: Image.asset(moustachePath)
        )
    );
  }
}