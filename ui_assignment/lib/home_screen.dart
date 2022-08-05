import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_assignment/second_screen.dart';
import 'package:ui_assignment/utils/konstant.dart';
import 'package:ui_assignment/widgets/default_border_row.dart';
import 'package:ui_assignment/widgets/default_button.dart';
import 'package:ui_assignment/widgets/default_light_button.dart';
import 'package:ui_assignment/widgets/dropdown_button.dart';
import 'package:ui_assignment/widgets/edit_profile_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            ProfileSection(height: height, width: width),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
              child: const Divider(
                color: defaultDivider,
                thickness: 10,
              ),
            ),
            ListSection(
              width: width,
              heading: "Income",
              widgets: const [
                DefaultBorderRow(
                    icon: Icons.shopping_cart_checkout_rounded,
                    text: "Shoping Mart",
                    rate: "-\$9"),
                SizedBox(
                  height: 20,
                ),
                DefaultBorderRow(
                    icon: Icons.local_pizza_outlined,
                    text: "Pizza HUTT",
                    rate: "-\$270"),
                SizedBox(
                  height: 20,
                ),
                DefaultBorderRow(
                    icon: Icons.water_drop_outlined,
                    text: "Oleo Market",
                    rate: "-\$300"),
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 15),
              child: Divider(
                color: defaultDivider,
                thickness: 10,
              ),
            ),
            ListSection(
              width: width,
              heading: "Outcome",
              widgets: const [
                DefaultBorderRow(
                    icon: Icons.shopping_bag_rounded,
                    text: "Burger Queen",
                    rate: "+\$20"),
                SizedBox(
                  height: 20,
                ),
                DefaultBorderRow(
                    icon: Icons.flight, text: "Flight Ticket", rate: "+\$240"),
                SizedBox(
                  height: 20,
                ),
                DefaultBorderRow(
                    icon: Icons.directions_car_filled,
                    text: "Car Services",
                    rate: "+\$200"),
                SizedBox(
                  height: 20,
                ),
                DefaultBorderRow(
                    icon: Icons.card_giftcard_rounded,
                    text: "Gift Shop",
                    rate: "+\$130"),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

class ListSection extends StatelessWidget {
  const ListSection({
    Key? key,
    required this.heading,
    required this.width,
    required this.widgets,
  }) : super(key: key);

  final double width;
  final String heading;
  final List<Widget> widgets;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(width / 25, 0, width / 25, 0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              heading,
              style: defaultTextStyle.copyWith(fontSize: 18),
            ),
            Row(
              children: [
                Text(
                  "For",
                  style: defaultTextStyle.copyWith(fontSize: 18),
                ),
                const SizedBox(
                  width: 3,
                ),
                const DropDown(),
              ],
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(width / 25, 0, width / 25, 0),
          child: Column(
            children: widgets,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(width / 25, 15, width / 25, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DefaultButton(buttonText: "View More", onPressed: () {}),
              DefaultLightButton(buttonText: "Filter", onPressed: () {}),
            ],
          ),
        ),
      ],
    );
  }
}

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(width / 25, 0, width / 25, 0),
      child: Column(children: [
        Padding(
          padding: EdgeInsets.only(bottom: height / 85),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Profile",
                style: defaultBoldTextStyle.copyWith(
                  fontSize: 20,
                ),
              ),
              Stack(
                children: [
                  SvgPicture.asset(
                    "assets/icons/bell.svg",
                    height: 23,
                    fit: BoxFit.scaleDown,
                    color: defaultBlack,
                  ),
                  const Positioned(
                    left: 12,
                    child: CircleAvatar(
                      radius: 6,
                      backgroundColor: gray,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 27,
                  backgroundImage: AssetImage(profileImg),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "James Ronald",
                        style: defaultBoldTextStyle.copyWith(fontSize: 18),
                      ),
                      Text(
                        "Freelance Worker",
                        style: secondaryTextStyle.copyWith(fontSize: 16),
                      )
                    ],
                  ),
                ),
              ],
            ),
            EditProfieButton(onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecondScreen()));
            })
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 5),
          child: Center(
            child: Text(
              "Total balance:",
              style: defaultTextStyle.copyWith(fontSize: 18),
            ),
          ),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "\$",
                style: defaultTextStyle.copyWith(fontSize: 15),
              ),
              Text(
                "16.000",
                style: defaultBoldTextStyle.copyWith(fontSize: 35),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
