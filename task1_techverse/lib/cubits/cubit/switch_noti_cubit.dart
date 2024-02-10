import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'switch_noti_state.dart';

class SwitchNotiCubit extends Cubit<SwitchNotiState> {
  SwitchNotiCubit() : super(SwitchNotiInitial());

  changeSwitchButton({required bool value}) {
    emit(SwitchChangeNotiState(changeVal: !value));
  }
}
