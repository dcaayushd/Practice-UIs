import 'package:fast_food_app/data/dummy_data.dart';
import 'package:flutter/material.dart';

import 'pizza_tab_widgets.dart';

class PizzaTab extends StatefulWidget {
  const PizzaTab({super.key});

  @override
  State<PizzaTab> createState() => _PizzaTabState();
}

class _PizzaTabState extends State<PizzaTab>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: GridView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: pizza.length,
            padding: const EdgeInsets.all(12),
            shrinkWrap: true,
            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1 / 1.3,
            ),
            itemBuilder: (context, index) {
              return PizzaCard(
                pizza: pizza[index],
              );
            },
          ),
        ),
        const SizedBox(
          height: 100,
        ),
      ],
    );
  }
}
