import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.teal[800],
          appBar: AppBar(
            title: Center(
              child: Text('Diceee'),
            ),
            backgroundColor: Colors.deepPurple,
          ),
          body: DicePage(),
        ),
      ),
    );

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int left = 1;
  int right = 1;
  void changeit() {
    left = Random().nextInt(5) + 1;
    right = Random().nextInt(5) + 1;
  }

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  changeit();
                });
              },
              child: Image.asset('image/dice$left.jfif'),
            ),
            flex: 1,
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  changeit();
                });
              },
              child: Image(
                image: AssetImage('image/dice$right.jfif'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
