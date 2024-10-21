import 'package:banking_app/utils/banking_colors.dart';
import 'package:banking_app/widgets/border_gradient.dart';
import 'package:banking_app/widgets/client_profile_widget.dart';
import 'package:flutter/material.dart';

class ClientsCountWidget extends StatelessWidget {
  const ClientsCountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: Container(
        height: 210,
        width: MediaQuery.of(context).size.width / 2 - 35,
        decoration: const BoxDecoration(
          color: BankingColors.darkGreen,
        ),
        child: Stack(
          children: [
            const Positioned(
              top: -50,
              right: -20,
              child: BorderGradient(
                begin: Alignment.centerLeft,
                height: 100,
                end: Alignment.bottomLeft,
                color: BankingColors.darkGreen,
              ),
            ),
            const Positioned(
              top: -30,
              right: -20,
              child: BorderGradient(
                begin: Alignment.centerLeft,
                end: Alignment.bottomLeft,
                height: 80,
                color: BankingColors.darkGreen,
              ),
            ),
            const Positioned(
              bottom: -70,
              left: -60,
              child: BorderGradient(
                begin: Alignment.centerLeft,
                height: 140,
                end: Alignment.bottomLeft,
                color: BankingColors.darkGreen,
              ),
            ),
            const Positioned(
              bottom: 10,
              left: -40,
              child: BorderGradient(
                begin: Alignment.centerLeft,
                height: 60,
                end: Alignment.bottomLeft,
                color: BankingColors.darkGreen,
              ),
            ),
            const Positioned(
              bottom: -50,
              left: -20,
              child: BorderGradient(
                begin: Alignment.centerLeft,
                height: 100,
                end: Alignment.bottomLeft,
                color: BankingColors.darkGreen,
              ),
            ),
            Positioned.fill(
              child: Container(
                margin: const EdgeInsets.only(
                    left: 17, bottom: 25, right: 17, top: 20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Client',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Text(
                          '763',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Clients',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    SizedBox(
                      height: 28,
                      width: (28 * 4) - 16,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            child: ClientProfileWidget(
                              assetName: 'assets/images/profile/profile_4.jpeg',
                            ),
                          ),
                          Positioned(
                            left: 22,
                            child: ClientProfileWidget(
                              assetName: 'assets/images/profile/profile_3.jpeg',
                            ),
                          ),
                          Positioned(
                            left: 44,
                            child: ClientProfileWidget(
                              assetName: 'assets/images/profile/profile_6.jpeg',
                            ),
                          ),
                          Positioned(
                            left: 66,
                            child: ClientProfileWidget(
                              assetName: 'assets/images/profile/profile_2.jpeg',
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
