import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'interests_state.dart';

class InterestsCubit extends Cubit<InterestsState> {
  InterestsCubit() : super(InterestsInitial());
  List<bool> isPressed = List.generate(14, (index) => false);

  void interestChosen(index) {
    isPressed[index] = true;
    emit(InterestChosen());
  }

  void interestNotChosen(index) {
    isPressed[index] = false;
    emit(InterestNotChosen());
  }
}
