import 'package:banking_app/utils/banking_colors.dart';
import 'package:banking_app/widgets/chart.dart';
import 'package:flutter/material.dart';

class CardSpendingChartWidget extends StatelessWidget {
  const CardSpendingChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 222,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade200,
          width: .8,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade100.withOpacity(.6),
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Dashboard',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Colors.black,
              ),
            ],
          ),
          const SizedBox(height: 15),
          Expanded(
            child: LineChartSample(
              lineColor: BankingColors.lightGreen,
              gradientColors: [
                BankingColors.lightGreen.withOpacity(.7),
                BankingColors.lightGreen.withOpacity(0),
              ],
              textColor: Colors.black,
              verticalLinesColor: Colors.grey.shade600,
              showBorder: false,
              showYAxisTiles: false,
            ),
          ),
        ],
      ),
    );
  }
}