import 'package:builder/core/ingredient/pizza_sauce.dart';
import 'package:builder/core/ingredient/beef_patty.dart';
import 'package:builder/core/ingredient/cheese.dart';
import 'package:builder/core/ingredient/tomato.dart';
import 'package:builder/core/recipes/pizza/builder/base/base_pizza_builder.dart';

class MargaritaPizza extends PizzaBuilderBase {
  MargaritaPizza() {
    price = 13.99;
  }
  @override
  void addBeef() {
    pizza.addIngredient(BeefPatty());
  }

  @override
  void addCheese() {
    pizza.addIngredient(Cheese());
  }

  @override
  void addPatties() {
    pizza.addIngredient(BeefPatty());
  }

  @override
  void addSauces() {
    pizza.addIngredient(PizzaSauce());
  }

  @override
  void addTomato() {
    pizza.addIngredient(Tomato());
  }
}
