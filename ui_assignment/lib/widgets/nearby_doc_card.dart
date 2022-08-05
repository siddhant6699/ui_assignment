import 'package:flutter/material.dart';
import 'package:ui_assignment/utils/konstant.dart';

class NearbyDocCard extends StatelessWidget {
  const NearbyDocCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
                width: 65,
                height: 65,
                padding: const EdgeInsets.only(right: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    profileImg,
                  ),
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Merrill Kervin",
                  style: defaultBoldTextStyle.copyWith(fontSize: 17),
                ),
                Text(
                  "Gastroenterolgist",
                  style: secondaryTextStyle.copyWith(color: lightGrey),
                ),
              ],
            ),
          ],
        ),
        Text(
          "100 m",
          style: secondaryTextStyle.copyWith(color: lightGrey),
        )
      ],
    );
  }
}
