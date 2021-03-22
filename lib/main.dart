import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play("note$soundNumber.wav");
  }

  void count(dynamic word) {
  }


  Expanded buildKey({Color color, int soundNumber, dynamic word, }) {
    return Expanded(
      child: FlatButton(
        child: const Text("",
            style: TextStyle(
              color: Colors.black,
              fontSize: 40,
            )
        ),
        color: color,
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1,),
              buildKey(color: Colors.blue, soundNumber: 2, word: "ド"),
              buildKey(color: Colors.yellow, soundNumber: 3, word: "レ"),
              buildKey(color: Colors.green, soundNumber: 4, word: "ミ"),
              buildKey(color: Colors.brown, soundNumber: 5, word: "ファ"),
              buildKey(color: Colors.white, soundNumber: 6, word: "ソ"),
              buildKey(color: Colors.purpleAccent, soundNumber: 7, word: "ラ"),
            ],
          ),
        ),
      ),
    );
  }
}

/*
  crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget> [
              Expanded(
                child: FlatButton(
                color: Colors.red,
                    onPressed: () {
                    playSound(1);
                    },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    playSound(2);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.yellow,
                  onPressed: () {
                    playSound(3);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    playSound(4);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.brown,
                  onPressed: () {
                    playSound(5);
                  },
                ),
              ),

              Expanded(
                child: FlatButton(
                  color: Colors.purpleAccent,
                  onPressed: () {
                    playSound(6);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    playSound(7);
                  },
                ),
              ),

            ],
 */
