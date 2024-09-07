

import 'package:flutter/material.dart';
import 'package:pizzaapp/models/data_models.dart';
import 'package:pizzaapp/utils/constants.dart';

class CustomPizzaController extends ChangeNotifier {
  late CustomPizza myCustomPizza;
  bool isIngredientHoveringOverPizza = false;
  // bool rotate = false;
  double turns = 0.0;
  Ingredient? latestAcceptedIngredient;

  initializeMyCustomPizza(CustomPizza newPizza) {
    myCustomPizza = newPizza;
    notifyListeners();
  }

  updateLatestIngredient({required Ingredient? latestIngredient}) {
    latestAcceptedIngredient = latestIngredient;
    notifyListeners();
  }

  setMyCustomPizza(CustomPizza pizza) {
    myCustomPizza = pizza;
    notifyListeners();
  }

  changePizzaSize({required PizzaSize newPizzaSize}) {
    if (pizzaSizes[myCustomPizza.pizzaSize]! == pizzaSizes[newPizzaSize]!) {
      return;
    }
    if (pizzaSizes[myCustomPizza.pizzaSize]! > pizzaSizes[newPizzaSize]!) {
      turns += 0.30;
    } else {
      turns -= 0.30;
    }

    myCustomPizza.pizzaSize = newPizzaSize;
    notifyListeners();
  }

  toggleIngredientFocus({required bool isFocused}) {
    isIngredientHoveringOverPizza = isFocused;
    notifyListeners();
  }

  addIngredient({required Ingredient ingredient}) {
    myCustomPizza.addOnIngredients.add(ingredient);
    notifyListeners();
    updatePrice();
  }

  bool containsIngredient({required Ingredient ingredient}) {
    return myCustomPizza.addOnIngredients.contains(ingredient);
  }

  removeIngredient({required Ingredient ingredient}) {
    myCustomPizza.addOnIngredients.remove(ingredient);
    notifyListeners();

    updatePrice();
  }

  updatePrice() {
    myCustomPizza.price = myCustomPizza.pizza.price;
    for (var i in myCustomPizza.addOnIngredients) {
      myCustomPizza.price += i.price;
    }
    notifyListeners();
  }
}
