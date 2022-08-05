import 'package:flutter/material.dart';
import 'package:ui_assignment/utils/konstant.dart';

class DefaultBorderRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final String rate;
  const DefaultBorderRow(
      {Key? key, required this.icon, required this.text, required this.rate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.4,
              height: MediaQuery.of(context).size.height / 22,
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(width: 0.1)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 35.0, 0),
                    child: Icon(
                      icon,
                      size: 30,
                      color: lightGrey,
                    ),
                  ),
                  Text(
                    text,
                    style: defaultTextStyle.copyWith(fontSize: 20),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: MediaQuery.of(context).size.width / 4.9,
              height: MediaQuery.of(context).size.height / 22,
              padding: const EdgeInsets.only(left: 5),
              decoration: const BoxDecoration(
                border: Border(
                    left: BorderSide(width: 0.1),
                    bottom: BorderSide(width: 0.1)),
              ),
              child: Text(
                rate,
                style: secondaryTextStyle.copyWith(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
