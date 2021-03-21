import 'package:bloc/bloc.dart';

class MyObserver extends BlocObserver {

  @override
  void onTransition(Bloc bloc, Transition transition) {
    print('${bloc.runtimeType} $transition');
    super.onTransition(bloc, transition);
  }
}