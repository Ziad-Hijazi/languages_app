import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:languages/models/item.dart';
import 'package:languages/models/phrase.dart';

class listItem extends StatelessWidget {
  const listItem({
    required this.item,
    required this.color,
    required this.itemType,
  });
  final Item item;
  final Color color;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return item.image == null
        ? Container(
            color: color,
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.only(left: 22),
            child: Row(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.jpName,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    item.enName,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
              Spacer(flex: 1),
              IconButton(
                onPressed: () {
                  try {
                    final AudioCache player =
                        AudioCache(prefix: 'assets/images/sounds/$itemType/');
                    player.play(item.sound);
                  } catch (ex) {
                    print(ex);
                  }
                },
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 30,
                ),
              )
            ]),
          )
        : Container(
            color: color,
            height: 100,
            child: Row(children: [
              Container(
                margin: EdgeInsets.only(right: 15),
                color: Color(0xffFFF4DC),
                child: Image.asset(item.image!),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.jpName,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    item.enName,
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ],
              ),
              Spacer(flex: 1),
              IconButton(
                onPressed: () {
                  try {
                    final AudioCache player =
                        AudioCache(prefix: 'assets/images/sounds/$itemType/');
                    player.play(item.sound);
                  } catch (ex) {
                    print(ex);
                  }
                },
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 35,
                ),
              )
            ]),
          );
  }
}

// class phraseItem extends StatelessWidget {
//   const phraseItem({
//     required this.phrases,
//     required this.color,
//     required this.itemType,
//   });
//   final Item phrases;
//   final Color color;
//   final String itemType;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: color,
//       height: 100,
//       width: double.infinity,
//       padding: EdgeInsets.only(left: 22),
//       child: Row(children: [
//         Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               phrases.jpName,
//               style: TextStyle(
//                 fontSize: 16,
//                 color: Colors.white,
//               ),
//             ),
//             Text(
//               phrases.enName,
//               style: TextStyle(fontSize: 16, color: Colors.white),
//             ),
//           ],
//         ),
//         Spacer(flex: 1),
//         IconButton(
//           onPressed: () {
//             try {
//               final AudioCache player =
//                   AudioCache(prefix: 'assets/images/sounds/$itemType/');
//               player.play(phrases.sound);
//             } catch (ex) {
//               print(ex);
//             }
//           },
//           icon: Icon(
//             Icons.play_arrow,
//             color: Colors.white,
//             size: 30,
//           ),
//         )
//       ]),
//     );
//   }
// }
