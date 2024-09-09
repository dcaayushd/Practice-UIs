import 'package:calculator_app/constants/device_size.dart';
import 'package:calculator_app/widgets/buttons/symbol_button.dart';
import 'package:flutter/material.dart';

import 'widgets/buttons/number_button.dart';
import 'widgets/buttons/icon_button.dart';

class CalculatorUI extends StatelessWidget {
  const CalculatorUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Calculator",
                    style: titleStyle.copyWith(
                        color: Colors.orangeAccent.shade700),
                  ),
                  Text(
                    "Life",
                    style: titleStyle,
                  ),
                  Text(
                    "Finance",
                    style: titleStyle,
                  ),
                  const Icon(
                    Icons.more_vert,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
            Expanded(child: Container()),
            Column(
              children: [
                Row(
                  children: [
                    SymbolButton(
                      symbol: "C",
                      onTap: () {},
                      widgetColor: Colors.orangeAccent.shade700,
                    ),
                    IconBtn(child: Icons.backspace_outlined, onTap: () {}),
                    SymbolButton(symbol: "%", onTap: () {}),
                    SymbolButton(symbol: "/", onTap: () {}),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 3 * getDeviceWidth(context, 20),
                      width: 3 * getDeviceWidth(context, 25),
                      child: GridView.builder(
                          shrinkWrap: true,
                          reverse: true,
                          itemCount: 9,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 5 / 4, crossAxisCount: 3),
                          itemBuilder: (context, index) {
                            return NumberButton(
                                number: index + 1, onTap: () {});
                          }),
                    ),
                    Column(
                      children: [
                        SymbolButton(symbol: "*", onTap: () {}),
                        SymbolButton(symbol: "-", onTap: () {}),
                        SymbolButton(symbol: "+", onTap: () {}),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconBtn(
                      child: Icons.swap_horizontal_circle,
                      onTap: () {},
                      widgetColor: Colors.orangeAccent.shade700,
                    ),
                    NumberButton(number: 0, onTap: () {}),
                    SymbolButton(symbol: ".", onTap: () {}),
                    SymbolButton(
                      symbol: "=",
                      onTap: () {},
                      widgetColor: Colors.white,
                      backgroundColor: Colors.orangeAccent.shade700,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

TextStyle titleStyle =
    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
