import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNum) {
    AudioCache player = AudioCache();
    player.play('note$soundNum.wav');
  }

  Expanded buildKey({required int soundNum, required Color colour}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNum);
        },
        child: Container(
          color: colour,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              buildKey(soundNum: 1, colour: Colors.red),
              buildKey(soundNum: 2, colour: Colors.orange),
              buildKey(soundNum: 3, colour: Colors.yellow),
              buildKey(soundNum: 4, colour: Colors.green),
              buildKey(soundNum: 5, colour: Colors.teal),
              buildKey(soundNum: 6, colour: Colors.blue),
              buildKey(soundNum: 7, colour: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
