import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:touk/components/phrases_item.dart';
import 'package:touk/models/Phrases_object.dart';
import '../components/item.dart';
import '../models/Phrases_object.dart';

class phrases_page extends StatelessWidget {
  final List<Phrases_object> phrases = const [
    Phrases_object(
      jpname: "Kōdoku suru koto o wasurenaide kudasai",
      ename: "don't forget to subscribe",
      sound: "dont_forget_to_subscribe.wav",
    ),
    Phrases_object(
      jpname: "Puroguramingu ga daisukidesu",
      ename: "I Love Programming",
      sound: "i_love_programming.wav",
    ),
    Phrases_object(
      jpname: "Doko ni iku no?",
      ename: "Where are you going?",
      sound: "where_are_you_going.wav",
    ),
    Phrases_object(
      jpname: "Onamaehanandesuka?",
      ename: "What is your name?",
      sound: "what_is_your_name.wav",
    ),
    Phrases_object(
      jpname: "Watashi wa anime ga daisukidesu",
      ename: "I Love Anime",
      sound: "i_love_anime.wav",
    ),
    Phrases_object(
      jpname: "Go kibun wa ikagadesu ka",
      ename: "How are you feeling",
      sound: "how_are_you_feeling.wav",
    ),
    Phrases_object(
        jpname: "Puroguramingu wa kantandesu",
        ename: "Programming is easy",
        sound: "programming_is_easy.wav")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          'Phrases',
        ),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return phrases_item(
            phrase: phrases[index],
            color: const Color(0xff50ADC7),
          );
        },
      ),
    );
  }
}
