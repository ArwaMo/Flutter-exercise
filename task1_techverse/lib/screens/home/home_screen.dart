// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:task1_techverse/screens/home/components/container_widget.dart';
import 'package:task1_techverse/screens/pofile/profile_screen.dart';
import 'package:task1_techverse/screens/setting/setting_screen.dart';
import 'package:task1_techverse/screens/widgets/circleavatar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'الصفحة الرئيسية',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(218, 39, 75, 136),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingScreen()),
                );
              },
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 55),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 20, 49, 98),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: CircleAvatarWidget(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'عمر محمد',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(202, 0, 0, 0)),
            ),
            Text(
              'example@gmail.com',
              style: TextStyle(color: Color.fromARGB(255, 138, 138, 138)),
            ),
            Text(
              '0574927885929',
              style: TextStyle(color: Color.fromARGB(255, 138, 138, 138)),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 126, 88, 77),
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfileScreen()),
                  );
                },
                child: Text(
                  'تعديل الملف الشخصي',
                  style: TextStyle(color: Colors.white),
                )),
            SizedBox(
              height: 25,
            ),
            containerWidget(text: 'طلباتي'),
            SizedBox(
              height: 15,
            ),
            containerWidget(text: 'عناويني'),
            SizedBox(
              height: 15,
            ),
            containerWidget(text: 'المفضلة'),
            SizedBox(
              height: 15,
            ),
            containerWidget(text: 'كوبونات'),
          ],
        ),
      ),
    );
  }
}
