import 'package:flutter/material.dart';

import '../utils/konstant.dart';

class DefaultButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  const DefaultButton(
      {Key? key, required this.buttonText, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder:
          const RoundedRectangleBorder(borderRadius: defaultButtonRadius),
      splashColor: Colors.black,
      onTap: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width / 2.4,
        height: 50,
        //padding: const EdgeInsets.fromLTRB(0, 14, 0, 14),
        decoration: const BoxDecoration(
            color: defaultBlack, borderRadius: defaultButtonRadius),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonText,
              style: defaultBoldTextStyle.copyWith(
                  color: defaultWhite, fontSize: 16),
            ),
            const SizedBox(
              width: 2,
            ),
          ],
        ),
      ),
    );
  }
}

// Widget defaultButton() {
//   return GestureDetector(
//     onTap: () {},
//     child: Container(
//       padding: const EdgeInsets.all(12.0),
//       decoration: const BoxDecoration(
//         color: defaultBlack,
//         borderRadius: BorderRadius.only(
//             topRight: Radius.circular(40.0),
//             bottomRight: Radius.circular(40.0),
//             topLeft: Radius.circular(40.0),
//             bottomLeft: Radius.circular(40.0)),
//       ),
//       child: Row(
//         children: [
//           Text(
//             "Edit Profile",
//             style: defaultBoldTextStyle.copyWith(color: defaultWhite),
//           ),
//           const SizedBox(
//             width: 2,
//           ),
//           const Icon(
//             Icons.menu_rounded,
//             color: defaultWhite,
//             size: 20,
//           ),
//         ],
//       ),
//     ),
//   );
// }
