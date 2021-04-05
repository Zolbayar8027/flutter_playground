import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: BodyWidget(),
      ),
    );
  }
}

class BodyWidget extends StatefulWidget {
  const BodyWidget({
    Key key,
  }) : super(key: key);

  @override
  _BodyWidgetState createState() => _BodyWidgetState();
}


class _BodyWidgetState extends State<BodyWidget> {
  var myFontSize=20.0,
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'MyWonderfulMe',
          style: TextStyle(fontSize: myFontSize),
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  myFontSize = 10.0;
                });
              },
              child: Text('Small'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  myFontSize = 20.0;
                });
              },
              child: Text('Medium'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  myFontSize = 50.0;
                });
              },
              child: Text('Large'),
            ),
          ],
        )
      ],
    );
  }
}