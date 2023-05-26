import 'package:flutter/material.dart';
import '../models/object.dart';
import "package:touk/components/item.dart";

class numbers_page extends StatelessWidget {
  //create object
  final List<object> numbers = const [
    object(
        img: "assets/images/numbers/number_one.png",
        jpname: "ichi",
        ename: "One",
        sound: "one1.mp3"),
    object(
        img: "assets/images/numbers/number_two.png",
        jpname: "ni",
        ename: "Two",
        sound: "two 2.mp3"),
    object(
        img: "assets/images/numbers/number_three.png",
        jpname: "san",
        ename: "Three",
        sound: "three3.mp3"),
    object(
        img: "assets/images/numbers/number_four.png",
        jpname: "yon",
        ename: "Four",
        sound: "four.mp3"),
    object(
        img: "assets/images/numbers/number_five.png",
        jpname: "go",
        ename: "Five",
        sound: "five.mp3"),
    object(
        img: "assets/images/numbers/number_six.png",
        jpname: "roku",
        ename: "Six",
        sound: "six.mp3"),
    object(
        img: "assets/images/numbers/number_seven.png",
        jpname: "nana",
        ename: "Seven",
        sound: "nana7.mp3"),
    object(
        img: "assets/images/numbers/number_eight.png",
        jpname: "hachi",
        ename: "Eight",
        sound: "eight.mp3"),
    object(
        img: "assets/images/numbers/number_nine.png",
        jpname: "kyu",
        ename: "Nine",
        sound: "nine9.mp3"),
    object(
        img: "assets/images/numbers/number_ten.png",
        jpname: "ju",
        ename: "Ten",
        sound: "ten.mp3"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          'Numbers',
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return item(
            object: numbers[index],
            color: const Color(0xffEF9235),
            itemtype: 'numbers',
          );
        },
      ),
    );
  }
}
