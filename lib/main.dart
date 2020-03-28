import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Widget buildKey({int keyNote, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(keyNote);
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
            children: <Widget>[
              buildKey(keyNote: 1, color: Colors.purple),
              buildKey(keyNote: 2, color: Colors.blue),
              buildKey(keyNote: 3, color: Colors.teal),
              buildKey(keyNote: 4, color: Colors.green),
              buildKey(keyNote: 5, color: Colors.yellow),
              buildKey(keyNote: 6, color: Colors.orange),
              buildKey(keyNote: 7, color: Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}
