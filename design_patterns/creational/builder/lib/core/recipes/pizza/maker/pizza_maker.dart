import 'package:builder/core/recipes/pizza/base_pizza.dart';
import 'package:builder/core/recipes/pizza/builder/base/base_pizza_builder.dart';

class PizzaMaker {
  PizzaBuilderBase pizzaBuilder;

  PizzaMaker(this.pizzaBuilder);

  // ignore: use_setters_to_change_properties
  void changePizzaBuilder(PizzaBuilderBase pizzaBuilder) {
    this.pizzaBuilder = pizzaBuilder;
  }

  Pizza getPizza() {
    return pizzaBuilder.getPizza();
  }

  void preparePizza() {
    pizzaBuilder.addCheese();
    pizzaBuilder.addPatties();
    pizzaBuilder.addSauces();
    pizzaBuilder.addTomato();
  }
}
