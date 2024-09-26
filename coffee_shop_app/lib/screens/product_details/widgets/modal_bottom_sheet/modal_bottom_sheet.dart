import 'package:flutter/material.dart';
import '/utils/constants.dart';
import '/utils/app_assets.dart';

import 'widgets/bottom_model_sheet_widgets.dart';

class ModelSheet extends StatelessWidget {
  const ModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.72,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.cancel_sharp,
                        size: 40,
                      ))
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TemperatureWidget(),
                  QuantityWidget(),
                ],
              ),
            ),
            const SizedBox(height: 5.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(height: 1, thickness: 0.3, color: Colors.black38),
            ),
            const SizedBox(height: 5.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: SizeWidget(),
            ),
            const SizedBox(height: 5.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(height: 1, thickness: 0.3, color: Colors.black38),
            ),
            const SizedBox(height: 5.0),
            Column(
              children: [
                Container(
                  height: 80,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: ExtraIngredientWidget(
                    title: "Sugar",
                    measurement: "cubes",
                    image: AppAssets.extraIngredients.sugar,
                  ),
                ),
                Container(
                  height: 80,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: ExtraIngredientWidget(
                    title: "Ice",
                    measurement: "cubes",
                    image: AppAssets.extraIngredients.ice,
                  ),
                ),
                Container(
                  height: 80,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: ExtraIngredientWidgetBinary(
                    title: "Cream",
                    image: AppAssets.extraIngredients.cream,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(height: 1, thickness: 0.3, color: Colors.black38),
            ),
            const SizedBox(height: 5.0),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              margin: const EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total",
                        style: varelaBrown.copyWith(
                            fontWeight: FontWeight.w700,
                            color: Colors.brown.shade500),
                        textScaler: const TextScaler.linear(1.6),
                      ),
                      Text(
                        "\$9.50",
                        style:
                            varelaBrown.copyWith(fontWeight: FontWeight.w900),
                        textScaler: const TextScaler.linear(1.9),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                    width: 250,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all<Color>(kDarkBrownColor),
                        shape:
                            WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                      child: Text(
                        "Add to Orders",
                        textScaler: const TextScaler.linear(1.5),
                        style:
                            varelaWhite.copyWith(fontWeight: FontWeight.w700),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
