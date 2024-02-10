part of 'switch_dark_cubit.dart';

sealed class SwitchDarkState {}

final class SwitchInitial extends SwitchDarkState {}

final class SwitchChangeDarkState extends SwitchDarkState {
  final bool changeVal;
  SwitchChangeDarkState({required this.changeVal});
}




