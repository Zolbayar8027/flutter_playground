import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: BodyWidget(),
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {

  //String fruit = 'Apples';
  //final fruitNotfier = ValueNotifier<String>('apples');
  final colorNotfier = ValueNotifier<Color>(Colors.tealAccent.shade700);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: colorNotfier,
      builder: (context, colot, child) {
        return Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.red,
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 100),
                Text('hello'),
                SizedBox(height: 100),
                ElevatedButton(
                  onPressed: () {
                    print('I was clicked.');

                    colorNotfier.value = Colors.indigo.shade700;
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