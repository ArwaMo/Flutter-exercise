// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Card cardInfo(
    {required String title, required String subtitle, required IconData icon}) {
  return Card(
    shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.amber)),
    elevation: 8,
    //surfaceTintColor: Colors.amber,
    color: Color.fromARGB(218, 39, 75, 136),
    child: ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        title,
        //textAlign: TextAlign.right,
        // textDirection: TextDirection.rtl,
        style: TextStyle(color: Colors.white, fontSize: 17),
      ),
      subtitle: Text(
        subtitle,
        //textAlign: TextAlign.right,
        // textDirection: TextDirection.rtl,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
      ),
      trailing: InkWell(
        onTap: () {},
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    ),
  );
}
