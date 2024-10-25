import 'package:banking_app/utils/banking_colors.dart';
import 'package:banking_app/widgets/header_widget.dart';
import 'package:banking_app/widgets/positions_and_cash_widget.dart';
import 'package:banking_app/widgets/token_bonus_left_widget.dart';
import 'package:banking_app/widgets/token_bonus_right_widget.dart';
import 'package:banking_app/widgets/total_balance_widget.dart';
import 'package:flutter/material.dart';

class AnalysisPage extends StatelessWidget {
  const AnalysisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, bottom: 120),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 55),
              const Header(
                heading: '    ',
                subHeading: 'Dashboard',
              ),
              const SizedBox(height: 15),
              const Text(
                'Total Balance',
                style: TextStyle(
                  fontSize: 22,
                  color: BankingColors.darkBlueGrey,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 10),
              const TotalBalanceWidget(),
              const SizedBox(height: 28),
              const PositionsAndCashWidget(),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Token Bonus',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: BankingColors.lightGreen,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                    child: const Text(
                      'Today',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Row(
                children: [
                  TokenBonusLeftWidget(),
                  SizedBox(width: 20),
                  TokenBonusRightWidget()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
