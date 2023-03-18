import 'package:flutter/material.dart';
import 'package:languages/Components/listItem.dart';
import 'package:languages/models/item.dart';

class Members extends StatelessWidget {
  const Members({super.key});
  final List<Item> members = const [
    Item(
        sound: 'number_one_sound.mp3',
        image: 'assets/images/members/number_one.png',
        jpName: 'ichi',
        enName: 'one'),
    Item(
        sound: 'number_two_sound.mp3',
        image: 'assets/images/members/number_two.png',
        jpName: 'Ni',
        enName: 'two'),
    Item(
        sound: 'number_three_sound.mp3',
        image: 'assets/images/members/number_three.png',
        jpName: 'San',
        enName: 'three'),
    Item(
        sound: 'number_four_sound.mp3',
        image: 'assets/images/members/number_four.png',
        jpName: 'Shi',
        enName: 'four'),
    Item(
        sound: 'number_five_sound.mp3',
        image: 'assets/images/members/number_five.png',
        jpName: 'Go',
        enName: 'five'),
    Item(
        sound: 'number_six_sound.mp3',
        image: 'assets/images/members/number_six.png',
        jpName: 'Roku',
        enName: 'six'),
    Item(
        sound: 'number_seven_sound.mp3',
        image: 'assets/images/members/number_seven.png',
        jpName: 'Sebun',
        enName: 'seven'),
    Item(
        sound: 'number_eight_sound.mp3',
        image: 'assets/images/members/number_eight.png',
        jpName: 'hachi',
        enName: 'eight'),
    Item(
        sound: 'number_nine_sound.mp3',
        image: 'assets/images/members/number_nine.png',
        jpName: 'kyu',
        enName: 'nine'),
    Item(
        sound: 'number_ten_sound.mp3',
        image: 'assets/images/members/number_ten.png',
        jpName: 'ju',
        enName: 'ten'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Members'),
        backgroundColor: Color(0xff47312B),
      ),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          return listItem(
            item: members[index],
            color: Color(0xffF09136),
            itemType: 'members',
          );
        },
      ),
    );
  }

  // List<Widget> getList(List<Number> numbers) {
  //   List<Widget> itemsList = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     itemsList.add(listItem(number: numbers[i]));
  //   }
  //   return itemsList;
  // }
}
