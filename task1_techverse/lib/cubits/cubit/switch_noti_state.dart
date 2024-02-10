part of 'switch_noti_cubit.dart';

@immutable
sealed class SwitchNotiState {}

final class SwitchNotiInitial extends SwitchNotiState {}
final class SwitchChangeNotiState extends SwitchNotiState {
  final bool changeVal;
  SwitchChangeNotiState({required this.changeVal});
}