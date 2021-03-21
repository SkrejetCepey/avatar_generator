import 'package:avatar_generator/avatar.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'avatar_state.dart';

class AvatarCubit extends Cubit<AvatarState> {
  AvatarCubit() : super(AvatarInitial());

  void change(String partAvatar) {
    String part = partAvatar.split('/')[1];
    if (part == 'faces') {
      Avatar.face = partAvatar;
      emit(AvatarEdited());
    } else if (part == 'eyes') {
      Avatar.eyes = partAvatar;
      emit(AvatarEdited());
    } else if (part == 'hairstyles') {
      Avatar.hairstyle = partAvatar;
      emit(AvatarEdited());
    } else if (part == 'moustaches') {
      Avatar.moustache = partAvatar;
      emit(AvatarEdited());
    } else if (part == 'mouths') {
      Avatar.mouth = partAvatar;
      emit(AvatarEdited());
    }
  }
}
