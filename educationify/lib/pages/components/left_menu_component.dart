import 'package:educationify/widgets/education_icon_widget.dart';
import 'package:educationify/widgets/menu_icons_widget.dart';
import 'package:flutter/material.dart';

class LeftMenuComponent extends StatelessWidget {
  const LeftMenuComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: double.infinity,
      padding: const EdgeInsets.only(left: 5),
      child: const Column(
        children: [
          SizedBox(height: 55),
          EducationIconWidget(),
          SizedBox(height: 130),
          MenuIconsWidget(),
        ],
      ),
    );
  }
}
