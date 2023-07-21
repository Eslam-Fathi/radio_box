import 'package:bloc/bloc.dart';
import 'package:radio_box/cubit/radio_state.dart';

class RadioCubit extends Cubit<RadioCubitState> {
  RadioCubit() : super(const RadioCubitState(0));

  void selectRadio(int value) {
    emit(RadioCubitState(value));
  }
}
