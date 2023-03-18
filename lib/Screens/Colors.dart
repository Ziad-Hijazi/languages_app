import 'package:flutter/material.dart';
import 'package:languages/Components/listItem.dart';
import 'package:languages/models/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Item> colors = const [
    Item(
        sound: 'black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'Burakku',
        enName: 'black'),
    Item(
        sound: 'brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'brown'),
    Item(
        sound: 'dusty yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Hokori ppoi kiiro',
        enName: 'dusty yellow'),
    Item(
        sound: 'gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gure',
        enName: 'gray'),
    Item(
        sound: 'green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'green'),
    Item(
        sound: 'red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'red'),
    Item(
        sound: 'white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiroi',
        enName: 'white'),
    Item(
        sound: 'yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: 'Burakku',
        enName: 'black'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors'),
        backgroundColor: Color(0xff47312B),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return listItem(
            item: colors[index],
            color: Color(0xff79339E),
            itemType: 'colors',
          );
        },
      ),
    );
  }
}
