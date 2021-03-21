import 'package:flutter/material.dart';

class Hairstyle {

  final String hairstylePath;

  Hairstyle({@required this.hairstylePath});

  Widget build() {
    return Container(
        child: FractionallySizedBox(
          heightFactor: .5,
            widthFactor: .1,
            alignment: Alignment.topCenter,
            child: Image.asset(hairstylePath)
        )
    );
  }
}