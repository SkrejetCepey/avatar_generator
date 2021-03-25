import 'package:avatar_generator/cubits/color_bottom_navigation_bar/color_bottom_navigation_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'colors_entry.dart';

class ColorBottomNavigationBar extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorBottomNavigationBarCubit, ColorBottomNavigationBarState>(
      builder: (BuildContext context, ColorBottomNavigationBarState state) {

        final ColorBottomNavigationBarCubit navBarCubit = BlocProvider.of<ColorBottomNavigationBarCubit>(context);

        return BottomNavigationBar(
          currentIndex: navBarCubit.currentPage,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            ColorsEntry.set(index);
            navBarCubit.changePage(index);
          },
          items: [
            BottomNavigationBarItem(
                icon: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(color: Colors.black)
                    ),
                    child: Icon(Icons.circle, color: Colors.lightGreenAccent)
                ),
                label: 'LightGreen'
            ),
            BottomNavigationBarItem(
                icon: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(color: Colors.black)
                    ),
                    child: Icon(Icons.circle, color: Colors.limeAccent)
                ),
                label: 'Lime'
            ),
            BottomNavigationBarItem(
                icon: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(color: Colors.black)
                    ),
                    child: Icon(Icons.circle, color: Colors.red)
                ),
                label: 'Red'
            ),
            BottomNavigationBarItem(
                icon: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(color: Colors.black)
                    ),
                    child: Icon(Icons.circle, color: Colors.deepOrange)
                ),
                label: 'Orange'
            ),
            BottomNavigationBarItem(
                icon: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(color: Colors.black)
                    ),
                    child: Icon(Icons.circle, color: Colors.amberAccent)
                ),
                label: 'Ember'
            ),
            BottomNavigationBarItem(
                icon: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(color: Colors.black)
                    ),
                    child: Icon(Icons.circle, color: Colors.indigo)
                ),
                label: 'Indigo'
            ),
            BottomNavigationBarItem(
                icon: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(color: Colors.black)
                    ),
                    child: Icon(Icons.circle, color: Colors.black)
                ),
                label: 'Indigo'
            ),
          ],
        );
      },
    );
  }
}