import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({
    super.key, required this.color,
  });
final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130.0,
      height: 130.0,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.all(Radius.circular(66.0)),
        border: Border.all(
          color: color,
          width: 4.0,
        ),
      ),
      child: ClipOval(
        child: Image.asset(
          'images/image_profile.png',
        ),
      ),
    );
  }
}
