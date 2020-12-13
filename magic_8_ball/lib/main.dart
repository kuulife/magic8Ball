import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(home: BallPage()),
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text('Ask me anything'),
        backgroundColor: Colors.blue,
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
  int imageNumber = 1;
  @override
  Widget build(BuildContext context) {
    void hello() {
      setState(() {
        imageNumber = Random().nextInt(5) + 1;
      });
    }

    return Center(
      child: FlatButton(
        onPressed: () {
          hello();
        },
        child: Image.asset('images/ball$imageNumber.png'),
      ),
    );
  }
}
