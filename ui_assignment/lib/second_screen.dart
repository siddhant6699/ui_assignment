import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_assignment/utils/konstant.dart';
import 'package:ui_assignment/widgets/emoji_board.dart';
import 'package:ui_assignment/widgets/slider_item.dart';
import 'widgets/nearby_doc_card.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileSection(
                height: height,
              ),
              const MyAppointmentSection(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      "Nearby Doctors",
                      style: defaultBoldTextStyle.copyWith(fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                    child: Column(
                      children: const [
                        NearbyDocCard(),
                        NearbyDocCard(),
                        NearbyDocCard(),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(color: gray.withOpacity(0.5), width: 1))),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: lightGrey,
          iconSize: 30,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.now_widgets),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.message_rounded,
              ),
              label: '',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
          ],
          //currentIndex: _selectedIndex,
          selectedItemColor: defaultBlue,
          //onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class MyAppointmentSection extends StatelessWidget {
  const MyAppointmentSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: Text(
            "My Appointment",
            style: defaultBoldTextStyle.copyWith(fontSize: 18),
          ),
        ),
        CarouselSlider(
          items: const [
            SliderItemWidget(),
            SliderItemWidget(),
          ],
          //Slider Container properties
          options: CarouselOptions(
            height: 150.0,
            enlargeCenterPage: false,
            autoPlay: false,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: false,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 0.87,
          ),
        ),
      ],
    );
  }
}

class ProfileSection extends StatelessWidget {
  const ProfileSection({Key? key, required this.height})
      : super(
          key: key,
        );
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height / 2.5,
      child: Stack(
        children: [
          Container(
            height: height / 3,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.fromLTRB(10, 45, 10, 0),
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
                      backgroundImage: AssetImage(profileImg),
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
                          style: secondaryTextStyle.copyWith(
                              color: secondaryWhite),
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
          Positioned(
            top: height < 700 ? 100 : 155,
            left: 35,
            right: 35,
            child: const HowAreYouCard(),
          ),
        ],
      ),
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
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 15),
      // height: height / 4.5,
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
