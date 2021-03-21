import 'package:flutter/material.dart';

class Face {

  final String facePath;

  Face({@required this.facePath});

  Widget build() {
    return Container(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            children: <Widget>[
              SizedBox(
                height: constraints.minHeight / 4,
              ),
              Image.asset(facePath)
            ],
          );
        },
      ),
    );
  }
}