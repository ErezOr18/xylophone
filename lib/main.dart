import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  void playSound(int num) => player.play('note$num.wav');

  Expanded buildKey({Color color, int soundNum}) {
    return Expanded(
      child: FlatButton(
        child: Text('Pick '),
        color: color,
        onPressed: () => playSound(soundNum),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(color: Colors.red, soundNum: 1),
                buildKey(color: Colors.green, soundNum: 2),
                buildKey(color: Colors.blue, soundNum: 3),
                buildKey(color: Colors.grey, soundNum: 4),
                buildKey(color: Colors.pink, soundNum: 5),
                buildKey(color: Colors.orange, soundNum: 6),
                buildKey(color: Colors.yellow, soundNum: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
