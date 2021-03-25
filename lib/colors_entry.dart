import 'package:flutter/material.dart';

class ColorsEntry {

  static Color _chooseColor = colors[6];

  static Color get getChooseColor => _chooseColor;

  static List<Color> colors = [
    Colors.lightGreenAccent,
    Colors.limeAccent,
    Colors.red,
    Colors.deepOrange,
    Colors.amberAccent,
    Colors.indigo,
    Colors.black,
  ];

  static set(int index) {
    _chooseColor = colors[index];
  }

}