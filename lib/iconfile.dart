import 'package:flutter/material.dart';
import 'constant.dart';

class Iconfile extends StatelessWidget {
  Iconfile({required this.icon, required this.name});
  final IconData icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 18,
          color: Colors.white,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          name,
          style: kLabelText,
        ),
      ],
    );
  }
}

class Pics extends StatelessWidget {
  Pics({required this.display, required this.name});
  final ImageProvider display;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: display,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          name,
          style: kLabelText,
        ),
      ],
    );
  }
}
