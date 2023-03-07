import 'package:flutter/material.dart';
// Here we start with the main function which is the starting point of the whole flutter app
void main() {
  // runApp is a widget which help us to give us  constraints during layout that force it to fill the entire screen. If you wish to align your widget to one side of the screen (e.g., the top), consider using the [Align] widget. If you wish to center your widget, you can also use the [Center] widget.
  runApp(
    const MaterialApp(
      home: Center(
        child: Text('Hello World'),
      ),
    ),
  );
}

