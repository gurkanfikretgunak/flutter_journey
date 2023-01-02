import 'package:builder/core/recipes/burger/base_burger.dart';
import 'package:builder/core/recipes/pizza/base_pizza.dart';
import 'package:builder/view/widgets/information_labels..dart';
import 'package:flutter/material.dart';

class BurgerInformationColumn extends StatelessWidget {
  final Burger burger;

  const BurgerInformationColumn({
    super.key,
    required this.burger,
  }) : assert(burger != null);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const BurgerInformationLabel('Price'),
        Text(burger.getFormattedPrice()),
        const SizedBox(height: 10),
        const BurgerInformationLabel('Ingredients'),
        Text(
          burger.getFormattedIngredients(),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 10),
        const BurgerInformationLabel('Allergens'),
        Text(
          burger.getFormattedAllergens(),
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}

class PizzaInformationColumn extends StatelessWidget {
  final Pizza pizza;

  const PizzaInformationColumn({
    super.key,
    required this.pizza,
  }) : assert(pizza != null);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const PizzaInformationLabel('Price'),
        Text(pizza.getFormattedPrice()),
        const SizedBox(height: 10),
        const PizzaInformationLabel('Ingredients'),
        Text(
          pizza.getFormattedIngredients(),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 10),
        const PizzaInformationLabel('Allergens'),
        Text(
          pizza.getFormattedAllergens(),
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}
