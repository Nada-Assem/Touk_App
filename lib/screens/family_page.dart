import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:touk/models/object.dart';
import '../components/item.dart';

class family_page extends StatelessWidget {
  final List<object> family = const [
    object(
        img: "assets/images/family_members/family_grandfather.png",
        jpname: "Ojisan",
        ename: "Grand Father",
        sound: "grand father.wav"),
    object(
        img: "assets/images/family_members/family_grandmother.png",
        jpname: "Sobo",
        ename: "Grand Mother",
        sound: "grand mother.wav"),
    object(
        img: "assets/images/family_members/family_father.png",
        jpname: "chichioya",
        ename: "Father",
        sound: "father.wav"),
    object(
        img: "assets/images/family_members/family_mother.png",
        jpname: "hahaoya",
        ename: "Mother",
        sound: "mother.wav"),
    object(
        img: "assets/images/family_members/family_daughter.png",
        jpname: "musume",
        ename: "Daughter",
        sound: "daughter.wav"),
    object(
        img: "assets/images/family_members/family_son.png",
        jpname: "musuko",
        ename: "Son",
        sound: "son.wav"),
    object(
        img: "assets/images/family_members/family_older_sister.png",
        jpname: "Ane",
        ename: "Older Sister",
        sound: "older sister.wav"),
    object(
        img: "assets/images/family_members/family_older_brother.png",
        jpname: "Nisan",
        ename: "Older Brother",
        sound: "older bother.wav"),
    object(
        img: "assets/images/family_members/family_younger_sister.png",
        jpname: "Imōto",
        ename: "Younger Sister",
        sound: "younger sister.wav"),
    object(
        img: "assets/images/family_members/family_younger_brother.png",
        jpname: "Otōto",
        ename: "Younger Brohter",
        sound: "younger brohter.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          'Family Members',
        ),
      ),
      body: ListView.builder(
        itemCount: family.length,
        itemBuilder: (context, index) {
          return item(
            object: family[index],
            color: const Color(0xff558B37),
            itemtype: 'family_members',
          );
        },
      ),
    );
  }
}
