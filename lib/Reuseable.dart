import 'package:flutter/material.dart';

class Reuse extends StatelessWidget {
  Reuse({required this.cardChild, this.onPressed, this.color});
  final Widget cardChild;
  final VoidCallback? onPressed;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardChild,
        color: color,
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
