import 'package:flutter/material.dart';
import 'package:ui_assignment/utils/konstant.dart';

class SliderItemWidget extends StatelessWidget {
  const SliderItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      decoration: BoxDecoration(
        border: Border.all(color: gray),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(children: [
        Row(
          children: [
            Container(
                width: 65,
                height: 65,
                padding: EdgeInsets.only(right: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
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
        Row(
          children: [
            const Icon(
              Icons.timer_sharp,
              color: lightGrey,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "Firday, 08:00 - 09:00 AM",
              style: defaultBoldTextStyle,
            ),
          ],
        )
      ]),
    );
  }
}
