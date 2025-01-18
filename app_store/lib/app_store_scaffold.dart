import 'package:app_store/app_theme.dart';
import 'package:app_store/profile_avatar.dart';
import 'package:flutter/cupertino.dart';

class AppStoreScaffold extends StatelessWidget {
  final String title;
  final List<Widget> children;
  final bool showProfile;

  const AppStoreScaffold({
    super.key,
    required this.title,
    required this.children,
    this.showProfile = false,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppTheme.backgroundColor,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: AppTheme.backgroundColor,
        border: null,
        middle: Text(title),
        trailing: showProfile ? const ProfileAvatar() : null,
      ),
      child: SafeArea(
        child: ListView(
          padding: AppTheme.padding,
          children: children,
        ),
      ),
    );
  }
}
