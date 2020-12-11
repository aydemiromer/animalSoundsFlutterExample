import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Animals());
}

class Animals extends StatelessWidget {
  void soundPlay(int soundNumber) {
    final player = AudioCache();
    player.play('animal$soundNumber.wav');
  }

  Image picture(int animal) {
    return Image(
      image: AssetImage('images/animal$animal.jpeg'),
    );
  }

  Expanded buildKey({int soundNumber, int animal}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          soundPlay(soundNumber);
        },
        child: picture(animal),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(
            child: Text('Animals Sounds'),
          ),
        ),
        backgroundColor: Colors.teal[200],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildKey(soundNumber: 1, animal: 1),
            buildKey(soundNumber: 2, animal: 2),
            buildKey(soundNumber: 3, animal: 3),
          ],
        ),
      ),
    );
  }
}
