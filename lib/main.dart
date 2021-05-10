import 'package:flutter/material.dart';
import 'package:mongol/mongol.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: AssetImage('images/profile.jpg',),

            )
          ),
          height: 500,
          width: 400,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: MongolText(
              'ᠮᠢᠨᠦ ᠨᠡᠷ᠎ᠡ ᠶᠢ ᠵᠣᠯᠪᠠᠶᠠᠷ ᠭᠡᠳᠡᠭ᠃ 21 ᠨᠠᠰᠤᠲᠠᠢ ᠪᠥᠭᠡᠳ ᠡᠮ ᠠᠢ ᠤᠤ ᠳᠡᠭᠡᠳᠦ ᠰᠤᠷᠭᠠᠭᠤᠯᠢ ᠳᠤ 3 ᠳᠦᠭᠡᠷ ᠺᠦᠷᠰ ᠲᠦ ᠰᠤᠷᠠᠳᠠᠭ ᠪᠣᠯᠤᠨ᠎ᠠ᠃ ᠪᠢ ᠴᠢᠯᠦᠭᠡᠲᠦ ᠴᠠᠭᠠᠷᠠᠢ ᠠᠭᠤᠯᠠᠨ ᠳᠤ ᠭᠠᠷᠬᠤ ᠳᠤᠷᠠᠲᠠᠢ ᠪᠠᠰᠠ ᠮᠠᠰᠢᠨ ᠪᠠᠷᠢᠬᠤ᠃',
              style: TextStyle(fontFamily: 'MongolianScript', fontSize: 15, color: Colors.white),

            ),
          ),
        ),
      ),
      ),
    );
  }
}