import 'package:flutter/material.dart';
import 'package:sales_dashboard/pages/components/left_menu_component.dart';
import 'package:sales_dashboard/pages/components/right_menu_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          LeftMenuComponent(),
          RightMenuComponent(),
        ],
      ),
    );
  }
}
