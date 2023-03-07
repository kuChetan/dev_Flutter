import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          appBar: AppBar(
        title: const Text('Chetan'),
        backgroundColor: Colors.cyanAccent,
      ),
      body: const Center(
        child: Image(
          image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRclxdZ9ivQopLWoohhrOoJwz28cFbjEusy-g&usqp=CAU'),
        ),
      ),
      ),
    ),
  );
}
