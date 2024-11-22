import 'package:flutter/material.dart';
import 'package:sales_dashboard/widgets/dashboard_widget.dart';
import 'package:sales_dashboard/widgets/performance_widget.dart';
import 'package:sales_dashboard/widgets/update_offer_pro_widget.dart';

class DashboardContentWidget extends StatelessWidget {
  const DashboardContentWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Container(
            width: 690,
            padding: const EdgeInsets.only(left: 20, right: 14),
            child: const DashboardLeftPartitionWidget(),
          ),
          Container(
            height: double.infinity,
            width: 1.2,
            color: Colors.grey.withOpacity(.3),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(13),
              child: const Column(
                children: [
                  PerformanceWidget(),
                  SizedBox(height: 15),
                  Expanded(child: UpdateOfferProWidget()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
