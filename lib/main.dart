import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int i) {
    final player = AudioCache();
    player.play('note$i.wav');
  }

  Expanded tile({Color color, int noteNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(noteNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              tile(color: Colors.red, noteNumber: 1),
              tile(color: Colors.orange, noteNumber: 2),
              tile(color: Colors.yellow, noteNumber: 3),
              tile(color: Colors.green, noteNumber: 4),
              tile(color: Colors.teal, noteNumber: 5),
              tile(color: Colors.blue, noteNumber: 6),
              tile(color: Colors.purple, noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
