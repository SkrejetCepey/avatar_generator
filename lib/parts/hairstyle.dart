import 'package:flutter/material.dart';

class Hairstyle {

  final String hairstylePath;

  Hairstyle({@required this.hairstylePath});

  Widget build() {
    return Container(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            children: <Widget>[
              SizedBox(
                height: constraints.minHeight / 5,
              ),
              Image.asset(hairstylePath)
            ],
          );
        },
      )
    );
  }
}