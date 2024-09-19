import 'package:fast_food_app/models/pizza.dart';
import 'package:fast_food_app/views/screens/home/tabs/pizza/remix_pizza/remix_pizza.dart';
import 'package:flutter/material.dart';

class PizzaCard extends StatelessWidget {
  final Pizza pizza;

  const PizzaCard({
    super.key,
    required this.pizza,
  });

  final double borderRadius = 18;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        decoration: BoxDecoration(
          color: pizza.color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const RemixPizza()));
          },
          child: Column(
            children: [
              // price
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: pizza.color.withOpacity(0.3),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(borderRadius),
                        topRight: Radius.circular(borderRadius),
                      ),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      ' \$${pizza.price} ',
                      style: TextStyle(
                        color: pizza.color,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              // pizza picture
              Expanded(
                child: Hero(
                  tag: pizza.image,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 5),
                    child: Image.asset(pizza.image),
                  ),
                ),
              ),
              // pizza flavor
              Text(
                pizza.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Pizza Hut',
                style: TextStyle(color: Colors.grey[600]),
              ),
              // love icon + add button
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // love icon
                    Icon(
                      Icons.favorite, color: Colors.white,
                      // Colors.pink[400],
                    ),

                    // plus button
                    Text(
                      "Add",
                      textScaler: TextScaler.linear(1.3),
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.underline),
                    ),
                    // Icon(
                    //   Icons.add,
                    //   color: Colors.grey[800],
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
