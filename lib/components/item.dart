import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:touk/models/object.dart';

class item extends StatelessWidget {
  final object;
  final Color color;
  final String itemtype;
  const item(
      {Key? key,
      required this.object,
      required this.color,
      required this.itemtype})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF6DC),
            child: Image.asset(object.img),
          ),
          Container(
            width: 150,
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  object.jpname,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  object.ename,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            padding: const EdgeInsets.only(left: 100),
            onPressed: () async {
              try {
                AudioCache player =
                    AudioCache(prefix: 'assets/sounds/$itemtype/');
                player.play(object.sound);
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
