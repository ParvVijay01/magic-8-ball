import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: BallPage(),
    )
  );
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900  ,
      appBar: AppBar(
        title: Text('Ask me anything'),
        backgroundColor: Colors.blueGrey.shade500,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  var number = 1;
  void changeNumber() {
    number = Random().nextInt(5) + 1;
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(onPressed: () { setState(() {
        changeNumber();
      }); }, child: Image.asset('images/ball$number.png'),),
    );
  }
}

