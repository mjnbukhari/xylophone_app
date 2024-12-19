import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Expanded buildkey({required Color color, required int soundName}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundName);
        },
        style: TextButton.styleFrom(padding: EdgeInsets.all(0.0)),
        child: Container(
          padding: EdgeInsets.all(45.0),
          color: color,
        ),
      ),
    );
  }

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Xylophone',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: [
              buildkey(color: Colors.red, soundName: 1),
              buildkey(color: Colors.orange, soundName: 2),
              buildkey(color: Colors.yellow, soundName: 3),
              buildkey(color: Colors.green, soundName: 4),
              buildkey(color: Colors.teal, soundName: 5),
              buildkey(color: Colors.blue, soundName: 6),
              TextButton(
                onPressed: () {
                  playSound(7);
                },
                style: TextButton.styleFrom(padding: EdgeInsets.all(0.0)),
                child: Container(
                  padding: EdgeInsets.all(43.7),
                  color: Colors.purple,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
