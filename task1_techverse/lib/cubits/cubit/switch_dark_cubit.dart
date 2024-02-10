import 'package:bloc/bloc.dart';

part 'switch_dark_state.dart';

class SwitchDarkCubit extends Cubit<SwitchDarkState> {
  SwitchDarkCubit() : super(SwitchInitial());

  changeSwitchButton({required bool value}) {
    emit(SwitchChangeDarkState(changeVal: !value));
  }

  
}
