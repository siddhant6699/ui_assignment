import 'package:flutter/material.dart';
import 'package:ui_assignment/utils/konstant.dart';

class SliderItemWidget extends StatelessWidget {
  const SliderItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 6.0),
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      decoration: BoxDecoration(
        border: Border.all(color: gray),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(children: [
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
                  "Dr. Manish Mehta",
                  style: defaultBoldTextStyle.copyWith(fontSize: 17),
                ),
                Text(
                  "Nephroligst",
                  style: secondaryTextStyle.copyWith(color: lightGrey),
                ),
              ],
            ),
          ],
        ),
        const Divider(
          color: lightGrey,
          thickness: 0.2,
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            const Icon(
              Icons.timer_sharp,
              color: lightGrey,
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              "Friday, 08:00 - 09:00 AM",
              style: defaultBoldTextStyle,
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
      ]),
    );
  }
}
