import 'package:educationify/widgets/activities.dart';
import 'package:educationify/widgets/lesson_schedule.dart';
import 'package:flutter/material.dart';

class ActivitiesAndSchedules extends StatelessWidget {
  const ActivitiesAndSchedules({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Activities(),
        SizedBox(width: 15),
        LessonSchedule(),
      ],
    );
  }
}
