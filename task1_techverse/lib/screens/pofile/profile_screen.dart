// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:task1_techverse/screens/pofile/components/card_info.dart';
import 'package:task1_techverse/screens/widgets/circleavatar_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'الملف الشخصي',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(218, 39, 75, 136),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
            ),
            color: Colors.white,
          ),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 19),
            child: Column(
              children: [
                Stack(children: [
                  CircleAvatarWidget(
                    color: Color.fromARGB(255, 39, 75, 136),
                  ),
                  Positioned(
                    top: 100.5,
                    left: 95,
                    child: InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 39, 75, 136),
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        ),
                        radius: 15,
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 50,
                ),
                cardInfo(
                    title: 'الإسم', subtitle: 'عمر محمد', icon: Icons.person),
                SizedBox(
                  height: 10,
                ),
                cardInfo(
                    title: 'رقم الهاتف',
                    subtitle: '0574927885929',
                    icon: Icons.phone),
                SizedBox(
                  height: 10,
                ),
                cardInfo(
                    title: 'العنوان',
                    subtitle: 'المدينة',
                    icon: Icons.location_on),
                SizedBox(
                  height: 10,
                ),
                cardInfo(
                    title: 'الإيميل',
                    subtitle: 'example@gmail.com',
                    icon: Icons.email),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
