import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_assignment/utils/konstant.dart';
import 'package:ui_assignment/widgets/emoji_board.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const ProfileSection(),
            Container(
              child: Text("ASJKSDFHJKDHJK"),
            )
          ],
        ),
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.fromLTRB(10, 25, 10, 0),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [defaultLightBlue, defaultBlue]),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.elliptical(300, 65),
              bottomLeft: Radius.elliptical(300, 65),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 26,
                    backgroundImage:
                        AssetImage('assets/images/profile_img.jpeg'),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Good morning",
                        style:
                            secondaryTextStyle.copyWith(color: secondaryWhite),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        "David Mason",
                        style: secondaryTextStyle.copyWith(
                            color: defaultWhite, fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 7,
                  ),
                  SvgPicture.asset(
                    "assets/icons/bell.svg",
                    height: 23,
                    fit: BoxFit.scaleDown,
                    color: defaultWhite,
                  ),
                ],
              ),
            ],
          ),
        ),
        const Positioned(
          top: 100,
          left: 25,
          right: 25,
          child: HowAreYouCard(),
        ),
      ],
    );
  }
}

class HowAreYouCard extends StatelessWidget {
  const HowAreYouCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
      // height: MediaQuery.of(context).size.height / 4.5,
      width: MediaQuery.of(context).size.width / 1.3,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [secondaryLightBlue, defaultLime]),
          //border: Border.all(),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Column(children: [
        Text(
          "How are you feeling",
          style: secondaryTextStyle.copyWith(color: defaultWhite, fontSize: 25),
        ),
        Text(
          "today?",
          style: secondaryTextStyle.copyWith(color: defaultWhite, fontSize: 25),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            EmojiBoard(emoji: "😀", label: "Relaxed"),
            EmojiBoard(emoji: "😑", label: "Stressed"),
            EmojiBoard(emoji: "🤒", label: "Sick"),
          ],
        )
      ]),
    );
  }
}
