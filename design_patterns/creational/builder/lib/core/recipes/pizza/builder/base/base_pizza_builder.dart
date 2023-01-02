import 'package:builder/core/recipes/pizza/base_pizza.dart';
import 'package:flutter/material.dart';

abstract class PizzaBuilderBase {
  @protected
  late Pizza pizza;
  @protected
  late double price;

  void createPizza() {
    pizza = Pizza();
  }

  Pizza getPizza() {
    return pizza;
  }

  void setPizzaPrice() {
    pizza.setPrice(price);
  }

  void addBeef();
  void addCheese();
  void addPatties();
  void addSauces();
  void addTomato();
}
