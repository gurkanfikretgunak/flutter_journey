import 'package:builder/core/recipes/burger/builder/base/base_burger_builder.dart';
import 'package:builder/core/recipes/pizza/builder/base/base_pizza_builder.dart';

class BurgerMenuItem {
  final String label;
  final BurgerBuilderBase burgerBuilder;

  BurgerMenuItem({
    required this.label,
    required this.burgerBuilder,
  })  : assert(label != null),
        assert(burgerBuilder != null);
}

class PizzaMenuItem {
  final String label;
  final PizzaBuilderBase pizzaBuilder;

  PizzaMenuItem({
    required this.label,
    required this.pizzaBuilder,
  })  : assert(label != null),
        assert(pizzaBuilder != null);
}
