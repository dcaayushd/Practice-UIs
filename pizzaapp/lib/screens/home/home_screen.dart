import 'package:flutter/material.dart';
import 'package:pizzaapp/controllers/customize_pizza_controller.dart';
import 'package:pizzaapp/data/fake_data.dart';
import 'package:pizzaapp/models/data_models.dart';
import 'package:pizzaapp/screens/pizza_customization/pizza_customize.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: TextButton(
          child: const Text("Go customize"),
          onPressed: () {
            final pizza = CustomPizza(
                pizzaSize: PizzaSize.L,
                pizza: allPizzas[1],
                addOnIngredients: [],
                price: allPizzas[1].price);
            Provider.of<CustomPizzaController>(context, listen: false)
                .initializeMyCustomPizza(pizza);

            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const PizzaCustomize(),
              ),
            );
          },
        ),
      )),
    );
  }
}
