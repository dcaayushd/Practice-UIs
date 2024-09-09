
// toggle view icon
import 'package:flutter/material.dart';

import '../../constants/device_size.dart';

class IconBtn extends StatelessWidget {
  final IconData child;
  final VoidCallback onTap;
  final Color backgroundColor;
  final Color widgetColor;

  const IconBtn({
    super.key,
    required this.child,
    this.backgroundColor = Colors.white,
    this.widgetColor = Colors.black87,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          width: getDeviceWidth(context, 25),
          height: getDeviceWidth(context, 20),
          decoration: BoxDecoration(
              color: backgroundColor,
              border: Border.all(color: Colors.black38, width: 0.5)),
          child: Icon(
            child,
            color: widgetColor,
          ),
        ));
  }
}



