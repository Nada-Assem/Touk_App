import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:touk/models/object.dart';

import '../models/Phrases_object.dart';

class phrases_item extends StatelessWidget {
  final Phrases_object phrase;
  final Color color;
  const phrases_item({required this.phrase, required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: color,
      child: Row(
        children: [
          Container(
            width: 350,
            //padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jpname,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  phrase.ename,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            padding: const EdgeInsets.only(left: 30),
            onPressed: () async {
              try {
                AudioCache player =
                    AudioCache(prefix: 'assets/sounds/phrases/');
                player.play(phrase.sound);
              } catch (ex) {
                print(ex);
              }
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 28,
            ),
          )
        ],
      ),
    );
  }
}
