import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class XylophonePage extends StatelessWidget {
  Future<AudioPlayer> player(int playNumber) {
    final player = new AudioCache();
    return player.play('note$playNumber.wav');
  }

  Expanded expandedButton(Color color, int playNumber) {
    return Expanded(
      child: FlatButton(
        padding: EdgeInsets.all(0.0),
        onPressed: () {
          player(playNumber);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          expandedButton(Colors.red, 1),
          expandedButton(Colors.orange, 2),
          expandedButton(Colors.yellow, 3),
          expandedButton(Colors.green, 4),
          expandedButton(Colors.greenAccent, 5),
          expandedButton(Colors.blue, 6),
          expandedButton(Colors.purple, 7),
        ],
      ),
    );
  }
}
