import 'package:flutter/material.dart';
import 'package:languages/Components/listItem.dart';
import 'package:languages/models/item.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});
  final List<Item> familyMembers = const [
    Item(
        sound: 'father.wav',
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        enName: 'father'),
    Item(
        sound: 'daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'daughter'),
    Item(
        sound: 'grand father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Ojisan',
        enName: 'grand father'),
    Item(
        sound: 'mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahsoya',
        enName: 'mother'),
    Item(
        sound: 'grand mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Sobo',
        enName: 'grand mother'),
    Item(
        sound: 'older bother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Nisan',
        enName: 'older brother'),
    Item(
        sound: 'older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        enName: 'older sister'),
    Item(
        sound: 'son.wav',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'son'),
    Item(
        sound: 'younger brohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'japYounger',
        enName: 'younger'),
    Item(
        sound: 'younger sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'japYoungerSister',
        enName: 'younger sister'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Members'),
        backgroundColor: Color(0xff47312B),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) {
          return listItem(
            item: familyMembers[index],
            color: Colors.green,
            itemType: 'family_members',
          );
        },
      ),
    );
  }
}
