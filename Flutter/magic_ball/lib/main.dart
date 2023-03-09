import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        title: Center(child: Text('Click On The Ball',
        style: TextStyle(fontWeight: FontWeight.bold),
        ),),
        backgroundColor: Colors.blue,
      ),
      body:  magicBall(),
    ),
  ),
  );
}
class magicBall extends StatefulWidget {
  const magicBall({super.key});

  @override
  State<magicBall> createState() => _magicBallState();
}

class _magicBallState extends State<magicBall> {
  int changeBallImage = 1;
  void changeBall(){
    setState(() {
          changeBallImage = Random().nextInt(5)+1;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextButton(onPressed: (){
              changeBall();
            },
             child: Image.asset('images/ball$changeBallImage.png',
             height: 600.0,
             width: 600.0,
             ),
             
             ),
          ),
        ],
      ),
    );
  }
}

