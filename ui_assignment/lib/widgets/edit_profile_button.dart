import 'package:flutter/material.dart';

import '../utils/konstant.dart';

class EditProfieButton extends StatelessWidget {
  final VoidCallback onPressed;
  const EditProfieButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: defaultWhite,
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: const BoxDecoration(
          color: defaultBlack,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
              topLeft: Radius.circular(40.0),
              bottomLeft: Radius.circular(40.0)),
        ),
        child: Row(
          children: [
            Text(
              "Edit Profile",
              style: defaultBoldTextStyle.copyWith(color: defaultWhite),
            ),
            const SizedBox(
              width: 2,
            ),
            const Icon(
              Icons.menu_rounded,
              color: defaultWhite,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
