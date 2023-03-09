import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
void main() {
  runApp( PianoApp());
}

class PianoApp extends StatefulWidget {
  const PianoApp({super.key});

  @override
  State<PianoApp> createState() => _PianoAppState();
}

class _PianoAppState extends State<PianoApp> {
  void playSound(int soundNum){
    AssetsAudioPlayer.newPlayer().open(
                  Audio("assets/note$soundNum.wav"),);
  }

  Expanded buildKey({required int num, required Color color}){
    return Expanded(
                 child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(color),
                  ),
                  onPressed: (){
                    playSound(num);
                  },
                 child: Text('')),
               );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('PIANO',
        style: TextStyle(fontWeight: FontWeight.bold),),),
        backgroundColor: Colors.cyan,),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(num: 1, color: Colors.red),
              buildKey(num: 2, color: Colors.blue),
              buildKey(num: 3, color: Colors.green),
              buildKey(num: 4, color: Colors.orange),
              buildKey(num: 5, color: Colors.yellow),
              buildKey(num: 6, color: Colors.indigo),
              buildKey(num: 7, color: Colors.teal),
            ],
          ),
        ),
      ),
    );
  }
}