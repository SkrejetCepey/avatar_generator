import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'color_bottom_navigation_bar_state.dart';

class ColorBottomNavigationBarCubit extends Cubit<ColorBottomNavigationBarState> {

  int _selectedPage = 0;

  ColorBottomNavigationBarCubit() : super(ColorBottomNavigationBarInitial());

  int get currentPage => _selectedPage;

  void changePage(int index) {
    _selectedPage = index;
    emit(ColorBottomNavigationBarChanged());
  }
}
