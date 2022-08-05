import 'package:flutter/material.dart';
import 'package:ui_assignment/utils/konstant.dart';

class EmojiBoard extends StatelessWidget {
  final String emoji;
  final String label;
  const EmojiBoard({Key? key, required this.emoji, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: emojiBGColor),
          child: Center(
              child: Text(
            emoji,
            style: secondaryTextStyle.copyWith(fontSize: 35),
          )),
        ),
        Text(
          label,
          style: secondaryTextStyle.copyWith(color: defaultWhite),
        ),
      ],
    );
  }
}
