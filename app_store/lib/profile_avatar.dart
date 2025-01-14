import 'package:app_store/app_theme.dart';
import 'package:flutter/cupertino.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: AppTheme.cardColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Icon(
        CupertinoIcons.profile_circled,
        size: 36,
        color: CupertinoColors.systemGrey,
      ),
    );
  }
}