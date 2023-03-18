import 'package:flutter/material.dart';
import 'package:languages/Components/listItem.dart';
import 'package:languages/models/item.dart';
import 'package:languages/models/phrase.dart';

class PhrasePage extends StatelessWidget {
  const PhrasePage({super.key});
  final List<Item> phrases = const [
    Item(
      sound: 'dont_forget_to_subscribe.wav',
      jpName: 'kodoku sure koto o wasurenaide kudasai',
      enName: 'dont forget to subscribe',
    ),
    Item(
      sound: 'i_love_programming.wav',
      jpName: 'Watashi was puroguramingu ga daisukidesu',
      enName: 'i love programming',
    ),
    Item(
      sound: 'programming_is_easy.wav',
      jpName: 'Puroguramingu wa kantandesu',
      enName: 'programming is easy',
    ),
    Item(
      sound: 'where_are_you_going.wav',
      jpName: 'Doko ni iku no',
      enName: 'where are you going?',
    ),
    Item(
      sound: 'what_is_your_name.wav',
      jpName: 'Namae wa nandesu ka',
      enName: 'what is your name?',
    ),
    Item(
      sound: 'i_love_anime.wav',
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'i love anime',
    ),
    Item(
      sound: 'how_are_you_feeling.wav',
      jpName: 'Go kibun wa ikagadesu ka',
      enName: 'how are you feeling',
    ),
    Item(
      sound: 'are_you_coming.wav',
      jpName: 'Kimasu Ka',
      enName: 'are you coming',
    ),
    Item(
      sound: 'yes_im_coming.wav',
      jpName: 'By Japanise (yes im coming)',
      enName: 'yes im coming',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phrases'),
        backgroundColor: Color(0xff47312B),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return listItem(
            item: phrases[index],
            color: Color(0xff4FADC8),
            itemType: 'phrases',
          );
        },
      ),
    );
  }
}
