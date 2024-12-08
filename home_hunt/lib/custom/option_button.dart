// import 'package:flutter/material.dart';
// import 'package:home_hunt/utils/constants.dart';
// import 'package:home_hunt/utils/widget_functions.dart';

// class OptionButton extends StatelessWidget {
//   final String text;
//   final IconData icon;
//   final double width;

//   const OptionButton({
//     super.key,
//     required this.text,
//     required this.icon,
//     required this.width,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: width,
//       child: FlatButton(
//           color: colorDarkBlue,
//           splashColor: Colors.white.withAlpha(55),
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//           onPressed: () {},
//           child: Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Icon(
//                 icon,
//                 color: colorWhite,
//               ),
//               addHorizontalSpace(10),
//               Text(
//                 text,
//                 style: const TextStyle(color: colorWhite),
//               )
//             ],
//           )),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:home_hunt/utils/constants.dart';
import 'package:home_hunt/utils/widget_functions.dart';

class OptionButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final double width;

  const OptionButton({
    super.key,
    required this.text,
    required this.icon,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorDarkBlue,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        ),
        onPressed: () {},
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: colorWhite,
            ),
            addHorizontalSpace(10),
            Text(
              text,
              style: const TextStyle(color: colorWhite),
            )
          ],
        ),
      ),
    );
  }
}
