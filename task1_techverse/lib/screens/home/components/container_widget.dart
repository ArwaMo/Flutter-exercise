// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

InkWell containerWidget({required String text}) {
  return InkWell(
    onTap: () {},
    child: Container(
      width: 330,
      height: 60,
      foregroundDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border(
              top: BorderSide(color: Colors.amber),
              right: BorderSide(color: Colors.amber),
              left: BorderSide(color: Colors.amber),
              bottom: BorderSide(color: Colors.amber))),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        color: Color.fromARGB(218, 39, 75, 136),
      ),
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
            textDirection: TextDirection.rtl,
          ),
        ),
      ),
    ),
  );
}
