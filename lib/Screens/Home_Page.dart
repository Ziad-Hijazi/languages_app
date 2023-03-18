import 'package:flutter/material.dart';
import 'package:languages/Components/category_item.dart';
import 'package:languages/Screens/Members.dart';
import 'package:languages/Screens/FamilyMembers.dart';
import 'package:languages/Screens/Colors.dart';
import 'package:languages/Screens/Phrases.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF5DA),
      appBar: AppBar(
        backgroundColor: Color(0xff47312B),
        title: Text('Toku'),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Members(),
                  ));
            },
            text: 'Members',
            color: Color(0xffF09136),
          ),
          Category(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FamilyMembers(),
                  ));
            },
            text: 'Family Members',
            color: Colors.green,
          ),
          Category(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ColorsPage(),
                  ));
            },
            text: 'Colors',
            color: Color.fromARGB(255, 255, 12, 190),
          ),
          Category(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PhrasePage(),
                  ));
            },
            text: 'Phrases',
            color: Color.fromARGB(255, 0, 153, 255),
          ),
        ],
      ),
    );
  }
}
