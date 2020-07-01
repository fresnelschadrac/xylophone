import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(soundNumber: 1, soundName: 'Do', color: Colors.red),
              buildKey(soundNumber: 2, soundName: 'Ré', color: Colors.orange),
              buildKey(soundNumber: 3, soundName: 'Mi', color: Colors.yellow),
              buildKey(soundNumber: 4, soundName: 'Fa', color: Colors.green),
              buildKey(soundNumber: 5, soundName: 'Sol', color: Colors.teal),
              buildKey(soundNumber: 6, soundName: 'La', color: Colors.blue),
              buildKey(soundNumber: 7, soundName: 'Si', color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildKey({int soundNumber, String soundName, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(soundName),
      ),
    );
  }

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
}
