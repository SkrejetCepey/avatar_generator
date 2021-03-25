import 'dart:ui';

import 'package:avatar_generator/colors_entry.dart';
import 'package:avatar_generator/parts/eyes.dart';
import 'package:avatar_generator/parts/face.dart';
import 'package:avatar_generator/parts/hairstyle.dart';
import 'package:avatar_generator/parts/moustache.dart';
import 'package:avatar_generator/parts/mouth.dart';
import 'package:flutter/material.dart';

class Avatar {

  static Container _face = _emptyWidget();
  static Container _eyes = _emptyWidget();
  static Container _hairstyle = _emptyWidget();
  static Container _moustache = _emptyWidget();
  static Container _mouth = _emptyWidget();

  static Container _emptyWidget() {
    return Container();
  }

  static bool isRemove(String s) {
    return (s.split('/')[2] == 'delete.png') ? true : false;
  }

  static set face(s) {

    _face = (isRemove(s)) ? _emptyWidget() : Face(facePath: s).build();

  }

  static set eyes(String s) {

    _eyes = (isRemove(s)) ? _emptyWidget() : Eyes(eyesPath: s).build();

  }

  static set hairstyle(String s) {

    _hairstyle = (isRemove(s)) ? _emptyWidget() : Hairstyle(hairstylePath: s).build();

  }

  static set moustache(String s) {

    _moustache = (isRemove(s)) ? _emptyWidget() : Moustache(moustachePath: s).build();

  }

  static set mouth(String s) {

    _mouth = (isRemove(s)) ? _emptyWidget() : Mouth(mouthPath: s).build();

  }

  static Widget get viewAvatar {
    return Stack(
      fit: StackFit.expand,
      children: [
        _face,
        _eyes,
        ColorFiltered(
          colorFilter: ColorFilter.mode(ColorsEntry.getChooseColor, BlendMode.srcIn),
          child: _hairstyle,
        ),
        _mouth,
        _moustache
      ],
    );
  }
}