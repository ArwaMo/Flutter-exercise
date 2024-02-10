// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1_techverse/cubits/cubit/switch_dark_cubit.dart';
import 'package:task1_techverse/cubits/cubit/switch_noti_cubit.dart';

enum Language { english, arabic }

class SettingScreen extends StatefulWidget {
  SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  Set<Language> selection = <Language>{
    Language.arabic,
  };

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'الإعدادات',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(218, 39, 75, 136),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
          ),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.3,
                      height: MediaQuery.of(context).size.height / 1.9,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 20, 49, 98),
                          borderRadius: BorderRadius.circular(13)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Card(
                              color: Color.fromARGB(130, 97, 125, 173),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    BlocBuilder<SwitchDarkCubit,
                                        SwitchDarkState>(
                                      builder: (context, state) {
                                        return Switch.adaptive(
                                          activeColor: Colors.white,
                                          activeTrackColor:
                                              Color.fromARGB(255, 196, 161, 56),
                                          value: state is SwitchChangeDarkState
                                              ? !state.changeVal
                                              : false,
                                          onChanged: (bool value) {
                                            context
                                                .read<SwitchDarkCubit>()
                                                .changeSwitchButton(
                                                    value: value);
                                          },
                                        );
                                      },
                                    ),
                                    Text(
                                      'الوضع الداكن',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Card(
                              color: Color.fromARGB(130, 97, 125, 173),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    BlocBuilder<SwitchNotiCubit,
                                        SwitchNotiState>(
                                      builder: (context, state) {
                                        return Switch.adaptive(
                                          activeColor: Colors.white,
                                          activeTrackColor:
                                              Color.fromARGB(255, 196, 161, 56),
                                          value: state is SwitchChangeNotiState
                                              ? !state.changeVal
                                              : false,
                                          onChanged: (bool value) {
                                            context
                                                .read<SwitchNotiCubit>()
                                                .changeSwitchButton(
                                                    value: value);
                                          },
                                        );
                                      },
                                    ),
                                    Text(
                                      'إشعارات',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            SegmentedButton<Language>(
                              showSelectedIcon: false,
                              style: ButtonStyle(
                                  foregroundColor: MaterialStatePropertyAll(
                                      const Color.fromARGB(255, 119, 105, 65)),
                                  overlayColor: MaterialStatePropertyAll(
                                    Color.fromARGB(255, 126, 88, 77),
                                  )),
                              segments: const <ButtonSegment<Language>>[
                                ButtonSegment<Language>(
                                    value: Language.english,
                                    label: Text(
                                      'انجليزي',
                                    )),
                                ButtonSegment<Language>(
                                    value: Language.arabic,
                                    label: Text(
                                      'عربي',
                                    )),
                              ],
                              selected: selection,
                              onSelectionChanged: (Set<Language> newSelection) {
                                print(selection);
                                print(newSelection);
                                setState(() {
                                  selection = newSelection;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
