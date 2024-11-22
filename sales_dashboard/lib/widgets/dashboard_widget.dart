import 'package:flutter/material.dart';
import 'package:sales_dashboard/models/sales_report_model.dart';
import 'package:sales_dashboard/widgets/amount_statistics_widget.dart';
import 'package:sales_dashboard/widgets/dashboard_date_selector_widget.dart';
import 'package:sales_dashboard/widgets/revenue_chart_widget.dart';
import 'package:sales_dashboard/widgets/sales_report_widget.dart';
import 'package:sales_dashboard/widgets/transaction_listview_widget.dart';
import 'package:sales_dashboard/widgets/update_alert_widget.dart';

class DashboardLeftPartitionWidget extends StatelessWidget {
  const DashboardLeftPartitionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DashboardDateSelectorWidget(),
        SizedBox(
          height: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              UpdateAlertWidget(),
              AmountStatisticsWidget(
                heading: 'Net Income',
                deltaChange: 40,
                amount: '1,200.00',
              ),
              AmountStatisticsWidget(
                heading: 'Total Return',
                deltaChange: -22,
                amount: '829.50',
              ),
            ],
          ),
        ),
        SizedBox(height: 14),
        Expanded(
          child: Row(
            children: [
              Expanded(child: TransactionListViewWidget()),
              SizedBox(width: 14),
              Expanded(
                child: Column(
                  children: [
                    Expanded(child: RevenueChartWidget()),
                    SizedBox(height: 14),
                    Expanded(
                      child: SalesReportWidget(
                        salesReportModel:
                            SalesReportModel.dummySalesReportModel,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
