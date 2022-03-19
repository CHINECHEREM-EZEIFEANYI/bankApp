import 'package:flutter/material.dart';
import 'Reuseable.dart';
import 'iconfile.dart';

class Input extends StatefulWidget {
  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/first.jpg'),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Reuse(
                        cardChild: Pics(
                            display: AssetImage('image/abc.jpg'),
                            name: 'QR CODE'),
                      ),
                    ),
                    Expanded(
                      child: Reuse(
                        cardChild: Pics(
                            display: AssetImage('image/abc.jpg'),
                            name: 'QR CODE'),
                      ),
                    ),
                    Expanded(
                      child: Reuse(
                          cardChild: Pics(
                              display: AssetImage('image/abc.jpg'),
                              name: 'QR CODE')),
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Reuse(
                          cardChild: Pics(
                              display: AssetImage('image/abc.jpg'),
                              name: 'QR CODE'),
                        ),
                      ),
                      Expanded(
                        child: Reuse(
                          cardChild: Pics(
                              display: AssetImage('image/abc.jpg'),
                              name: 'QR CODE'),
                        ),
                      ),
                      Expanded(
                        child: Reuse(
                            cardChild: Pics(
                                display: AssetImage('image/abc.jpg'),
                                name: 'QR CODE')),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
