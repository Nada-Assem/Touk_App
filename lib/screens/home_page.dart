import 'package:flutter/material.dart';
import 'package:touk/screens/color_page.dart';
import 'package:touk/screens/numbers_page.dart';
import 'package:touk/screens/phrases_page.dart';
import '../components/category_item.dart';
import 'family_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Toku'),
      ),
      body: Column(
        children: [
          Category(const Color(0xffEF9235), "Numbers", () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return numbers_page();
            }));
          }),
          Category(const Color(0xff558B37), "Family Members", () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return family_page();
            }));
          }),
          Category(const Color(0xff79359F), "Colors", () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return color_page();
            }));
          }),
          Category(const Color(0xff50ADC7), "Phrases", () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return phrases_page();
            }));
          }),
        ],
      ),
    );
  }
}
