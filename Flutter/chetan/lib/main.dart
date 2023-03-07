import 'package:flutter/material.dart';

void main() {
  // 
  runApp( MaterialApp(
    // Scaffold is a widget in flutter used to implements the basic material design visual layout structure
    home: Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('I AM Chetan')),
        backgroundColor: Colors.grey[900],
      ),
      body: const Center(
        child: Image(
          image:AssetImage('images/chetan.jpg') ,
        ),
      ),
    ),
  ),);
}

