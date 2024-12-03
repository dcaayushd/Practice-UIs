import 'package:educationify/utils/colors.dart';
import 'package:educationify/widgets/calender_widget.dart';
import 'package:educationify/widgets/schedule_tile_widget.dart';
import 'package:flutter/material.dart';

class LessonSchedule extends StatelessWidget {
  const LessonSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 70,
            alignment: Alignment.centerLeft,
            child: const Text(
              'Lesson schedule',
              style: TextStyle(
                color: EducationColors.darkColor,
                fontSize: 36,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const CalenderWidget(),
          const SizedBox(height: 13),
          const ScheduleTilesWidget(
            upcomingLessonName: 'Webinar: `How to create a web hierarchy?`',
          ),
          const SizedBox(height: 13),
          const ScheduleTilesWidget(
            upcomingLessonName: 'Lesson: `How to create a responsive design?`',
          ),
          const SizedBox(height: 13),
          const ScheduleTilesWidget(
            upcomingLessonName: 'Lesson: `Understanding the\nbasics of Rust.`',
          ),
          const SizedBox(height: 13),
          const ScheduleTilesWidget(
            upcomingLessonName: 'Lab: `Creating a simple\nrust program.`',
          ),
        ],
      ),
    );
  }
}
