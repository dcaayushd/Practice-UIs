import 'package:app_store/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class DateHeader extends StatelessWidget {
  const DateHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(seconds: 1)),
      builder: (context, _) {
        final now = DateTime.now();
        final formattedDate = DateFormat('EEEE d MMMM').format(now);
        return Text(
          formattedDate,
          style: AppTheme.textSecondary.copyWith(letterSpacing: 0.5),
        );
      },
    );
  }
}