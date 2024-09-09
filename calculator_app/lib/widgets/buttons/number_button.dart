

// 0 1 2 3 4 5 6 7 8 9
import 'package:flutter/material.dart';

import '../../constants/device_size.dart';

class NumberButton extends StatelessWidget {
  final int number;
  final VoidCallback onTap;

  const NumberButton({super.key, required this.number, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: getDeviceWidth(context, 25),
        height: getDeviceWidth(context, 20),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black38, width: 0.5),
        ),
        child: Center(
            child: Text(
          number.toString(),
                                textScaler: const TextScaler.linear(3.0),

          style: TextStyle(
              color: Colors.black.withOpacity(0.7),
              fontWeight: FontWeight.w300),
        )),
      ),
    );
  }
}
