import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Hello World app',
      theme: ThemeData(primarySwatch: Colors.blueGrey,
      ),
      home: const MyHome(title:'Home page'),
    );
  }
}

class MyHome extends StatelessWidget{
  const MyHome({Key? key, required this.title}):super(key: key);
  final String title;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(child: Text('Hello World'),
      ),
    );
  }
}