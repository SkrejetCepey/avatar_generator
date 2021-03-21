import 'package:flutter/material.dart';

class Face {

  final String facePath;

  Face({@required this.facePath});

  Widget build() {
    return Container(
      child: FractionallySizedBox(
        alignment: Alignment.topCenter,
          heightFactor: 1,
          widthFactor: 1,
          child: Image.asset(facePath)
      ),
    );
  }
}