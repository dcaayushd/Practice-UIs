import 'package:flutter/material.dart';
import 'package:sales_dashboard/main.dart';
import 'package:sales_dashboard/widgets/dashboard_content_widget.dart';
import 'package:sales_dashboard/widgets/header_widget.dart';

class RightMenuComponent extends StatefulWidget {
  const RightMenuComponent({super.key});

  @override
  RightMenuComponentState createState() => RightMenuComponentState();
}

class RightMenuComponentState extends State<RightMenuComponent> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: windowSize.width - 210,
      child: Column(
        children: [
          const HeaderWidget(),
          Container(
            height: 1.2,
            width: double.infinity,
            color: Colors.grey.withOpacity(.3),
          ),
          const Expanded(child: DashboardContentWidget()),
        ],
      ),
    );
  }
}
