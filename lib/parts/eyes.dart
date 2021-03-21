import 'package:flutter/material.dart';

class Eyes {

  final String eyesPath;

  Eyes({@required this.eyesPath}) : super();

  Widget build() {
    return Container(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            children: <Widget>[
              SizedBox(
                height: constraints.minHeight * 0.35,
              ),
              Image.asset(eyesPath)
            ],
          );
        },
      ),
    );
  }
}