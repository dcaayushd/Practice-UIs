import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:tesla_app/pages/end_session_charging_details_page.dart';
import 'package:tesla_app/utils/tesla_colors.dart';
import 'package:tesla_app/widgets/bottom_sheet_action_buttons_widget.dart';
import 'package:tesla_app/widgets/charges_widget.dart';
import 'package:tesla_app/widgets/charging_stats_widget.dart';
import 'package:tesla_app/widgets/session_details_widget.dart';
import 'package:tesla_app/widgets/tesla_model_charging_card.dart';

class LiveChargingPage extends StatelessWidget {
  const LiveChargingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * .87,
        decoration: const BoxDecoration(color: TeslaColors.lightGreyColor),
        child: SizedBox(
          child: Stack(
            children: [
              Positioned.fill(
                child: ListView(
                  padding:
                      const EdgeInsets.only(left: 22, right: 22, bottom: 200),
                  children: [
                    const SizedBox(height: 35),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Session Summary',
                          style: TextStyle(
                            color: TeslaColors.darkGreenColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: TeslaColors.darkGreyColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: const EdgeInsets.all(5),
                            child: const Icon(
                              CupertinoIcons.chevron_down,
                              color: Colors.white,
                              size: 17,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 250,
                      padding: const EdgeInsets.symmetric(horizontal: 23),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Total Payable',
                            style: TextStyle(
                              color: TeslaColors.darkGreyColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Text(
                            '\$17.54',
                            style: TextStyle(
                              color: TeslaColors.darkGreenColor,
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 11),
                          Divider(
                            color: TeslaColors.greyColor.withOpacity(.6),
                            thickness: 1,
                          ),
                          const SizedBox(height: 10),
                          const ChargesWidget(
                            chargeType: 'Station Charges',
                            price: '15.21',
                          ),
                          const SizedBox(height: 9),
                          const ChargesWidget(
                            chargeType: 'OBE Fees',
                            price: '3.26',
                          ),
                          const SizedBox(height: 9),
                          const ChargesWidget(
                            chargeType: 'Taxes',
                            price: '1.55',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                    const SizedBox(
                      height: 80,
                      child: Row(
                        children: [
                          ChargingStatsWidget(
                            statsType: 'Charge Time',
                            statsValue: '02:13:14',
                          ),
                          SizedBox(width: 15),
                          ChargingStatsWidget(
                            statsType: 'Total Units',
                            statsValue: '12.5 kWh',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    const TeslaModelChargingCard(),
                    const SizedBox(height: 30),
                    const SessionDetails(
                      detailType: 'Session ID',
                      detailValue: '92371TS23P',
                    ),
                    Divider(
                      color: TeslaColors.greyColor.withOpacity(.4),
                      thickness: 1,
                    ),
                    const SessionDetails(
                      detailType: 'Price/kwh',
                      detailValue: '\$5.12',
                    ),
                    Divider(
                      color: TeslaColors.greyColor.withOpacity(.4),
                      thickness: 1,
                    ),
                    const SessionDetails(
                      detailType: 'Station',
                      detailValue: 'Alfa Zulu Dr.',
                    ),
                  ],
                ),
              ),
              BottomSheetActionButtons(
                confirmText: 'Stop Charge',
                cancelText: 'Keep Charging',
                confirmAction: () {
                  Navigator.pop(context);
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    showMaterialModalBottomSheet<EndSessionChargingDetailsPage>(
                      context: context,
                      useRootNavigator: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      builder: (context) => const EndSessionChargingDetailsPage(),
                    );
                  });
                },
                cancelAction: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
