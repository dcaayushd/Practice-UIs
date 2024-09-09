
// + - / * % . = C
import 'package:flutter/material.dart';

import '../../constants/device_size.dart';

class SymbolButton extends StatelessWidget {
  final String symbol;
  final VoidCallback onTap;
  final Color backgroundColor;
  final Color widgetColor;

  const SymbolButton(
      {super.key,
      required this.symbol,
      this.backgroundColor = Colors.white,
      this.widgetColor = Colors.black87,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: getDeviceWidth(context, 25),
        height: getDeviceWidth(context, 20),
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: Colors.black38, width: 0.5),
        ),
        child: Center(
            child: Text(
          symbol.toString(),
                                textScaler: const TextScaler.linear(3.0),


          style: TextStyle(color: widgetColor, fontWeight: FontWeight.w300),
        )),
      ),
    );
  }
}