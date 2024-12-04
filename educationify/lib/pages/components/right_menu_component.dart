import 'package:educationify/utils/colors.dart';
import 'package:educationify/widgets/activities_and_schedules.dart';
import 'package:educationify/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class RightMenuComponent extends StatelessWidget {
  const RightMenuComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: EducationColors.backgroundColor,
        child: ListView(
          padding: const EdgeInsets.only(bottom: 30),
          children: const [
            SizedBox(height: 45),
            HeaderWidget(),
            SizedBox(height: 15),
            ActivitiesAndSchedules(),
          ],
        ),
      ),
    );
  }
}
