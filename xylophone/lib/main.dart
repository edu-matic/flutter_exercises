import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play(
        'note$soundNumber.wav'); //no especifico la carpeta porque ya asume que esta en la carpeta assets
  }

  Widget buildKey({int soundNumber, Color colorTile}){
    return Expanded(
                child: FlatButton(
                  color: colorTile,
                  onPressed: () {
                    playSound(soundNumber);
                  },
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
            crossAxisAlignment: CrossAxisAlignment.stretch, // ocupar todo el espacio horizontal
            children: <Widget>[
              buildKey(colorTile: Colors.red, soundNumber: 1),
              buildKey(colorTile: Colors.orange, soundNumber: 2),
              buildKey(colorTile: Colors.yellow, soundNumber: 3),
              buildKey(colorTile: Colors.green, soundNumber: 4),
              buildKey(colorTile: Colors.blueGrey, soundNumber: 5),
              buildKey(colorTile: Colors.blue, soundNumber: 6),
              buildKey(colorTile: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}