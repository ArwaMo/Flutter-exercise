// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1_techverse/cubits/cubit/switch_dark_cubit.dart';
import 'package:task1_techverse/cubits/cubit/switch_noti_cubit.dart';
import 'package:task1_techverse/screens/home/home_screen.dart';
import 'package:task1_techverse/screens/pofile/profile_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SwitchDarkCubit>(
          create: (BuildContext context) => SwitchDarkCubit(),
        ),
        BlocProvider<SwitchNotiCubit>(
          create: (BuildContext context) => SwitchNotiCubit(),
        ),
      ],
      child: MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen()),
    );
  }
}
