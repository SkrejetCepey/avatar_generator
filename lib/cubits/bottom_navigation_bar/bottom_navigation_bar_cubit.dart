import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';

part 'bottom_navigation_bar_state.dart';

class BottomNavigationBarCubit extends Cubit<BottomNavigationBarState> {

  int _selectedPage = 0;
  List<String> imagesPath = <String>[];

  List<String> assetsPreferences = [
    'assets/faces/',
    'assets/eyes/',
    'assets/hairstyles/',
    'assets/moustaches/',
    'assets/mouths'
  ];

  int get currentPage => _selectedPage;

  void changePage(int index) {
    _selectedPage = index;
    _initImages(assetsPreferences[index]);
    emit(BottomNavigationBarChangedPage());
  }

  BottomNavigationBarCubit() : super(BottomNavigationBarInitial()) {
    _initImages('assets/faces/');
  }

  Future<void> _initImages(String entryPath) async {

    final manifestContent = await rootBundle.loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);

    imagesPath = manifestMap.keys
        .where((String key) => key.contains(entryPath))
        .toList();

    emit(BottomNavigationBarInitialised());
  }
}
