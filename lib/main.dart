import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey(c, n) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: c),
        onPressed: () {
          playSound(n);
        },
        child: Container(),
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
              buildKey(Colors.red,1),
              buildKey(Colors.orange,2),
              buildKey(Colors.yellow,3),
              buildKey(Colors.green,4),
              buildKey(Colors.blue,5),
              buildKey(Colors.indigo,6),
              buildKey(Colors.purple,7),

            ],
          ),
        ),
      ),
    );
  }
}
