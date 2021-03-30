import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_playground/some_ineedtodoit/home_page_logic.dart';

class BodyWidget extends StatefulWidget {
  @override
  _BodyWidgetState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  get homepagelogic => homepagelogic();



  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Color>(
      valueListenable: homepagelogic.colorNotfier,
      builder: (context, color, child) {
        return Container(
          width: double.infinity,
          height: double.infinity,
          color: color,
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 100),
                Text('Hello'),
                SizedBox(height: 100),
                ElevatedButton(
                  onPressed: () {
                    homepagelogic.changeBackgroundColor();

                  },
                  child: Text('Click me'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}


