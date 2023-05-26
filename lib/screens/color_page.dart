import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:touk/models/object.dart';
import '../components/item.dart';

class color_page extends StatelessWidget {
  final List<object> color = const [
    object(
        img: "assets/images/colors/color_black.png",
        jpname: "Burakku",
        ename: "Black",
        sound: "black.wav"),
    object(
        img: "assets/images/colors/color_brown.png",
        jpname: "Chairo",
        ename: "Brown",
        sound: "brown.wav"),
    /*object(
        img: "assets/images/colors/color_dusty_yellow.png",
        jpname: "",
        ename: "Dusty Yellow",
        sound: "dustyyellow.wav"), // ex*/
    object(
        img: "assets/images/colors/color_gray.png",
        jpname: "Gurē",
        ename: "Gray",
        sound: "gray.wav"),
    object(
        img: "assets/images/colors/color_green.png",
        jpname: "Midori",
        ename: "Green",
        sound: "green.wav"),
    object(
        img: "assets/images/colors/color_red.png",
        jpname: "Aka",
        ename: "Red",
        sound: "red.wav"),
    object(
        img: "assets/images/colors/color_white.png",
        jpname: "Shiroi",
        ename: "White",
        sound: "white.wav"),
    object(
        img: "assets/images/colors/yellow.png",
        jpname: "Kiiroi",
        ename: "Yellow",
        sound: "yellow.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          'Colors',
        ),
      ),
      body: ListView.builder(
        itemCount: color.length,
        itemBuilder: (context, index) {
          return item(
            object: color[index],
            color: const Color(0xff79359F),
            itemtype: 'colors',
          );
        },
      ),
    );
  }
}
