import 'package:fast_food_app/models/donut.dart';
import 'package:flutter/material.dart';

import '../view_donut_screen/view_donut_screen.dart';

class DonutCard extends StatelessWidget {
  final Donut donut;

  const DonutCard({
    super.key,
    required this.donut,
  });

  final double borderRadius = 18;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        decoration: BoxDecoration(
          color: donut.color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DonutScreen(donut: donut)));
          },
          child: Column(
            children: [
              // price
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: donut.color.withOpacity(0.3),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(borderRadius),
                        topRight: Radius.circular(borderRadius),
                      ),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      ' \$${donut.price} ',
                      style: TextStyle(
                        color: donut.color,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              // donut picture
              Expanded(
                child: Hero(
                  tag: donut.image,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40.0, vertical: 5),
                    child: Image.asset(donut.image),
                  ),
                ),
              ),
              // donut flavor
              Text(
                donut.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Dunkins',
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
