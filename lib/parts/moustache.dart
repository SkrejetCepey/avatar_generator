import 'package:flutter/material.dart';

class Moustache {

  final String moustachePath;

  Moustache({@required this.moustachePath});

  Widget build() {
    return Container(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            children: <Widget>[
              SizedBox(
                height: constraints.minHeight / 2,
              ),
              Image.asset(moustachePath)
            ],
          );
        },
      ),
    );
  }
}