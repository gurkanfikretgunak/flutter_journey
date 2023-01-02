import 'package:builder/core/recipes/burger/base_burger.dart';
import 'package:flutter/material.dart';

abstract class BurgerBuilderBase {
  @protected
  late Burger burger;
  @protected
  late double price;

  void createBurger() {
    burger = Burger();
  }

  Burger getBurger() {
    return burger;
  }

  void setBurgerPrice() {
    burger.setPrice(price);
  }

  void addBuns();
  void addCheese();
  void addPatties();
  void addSauces();
  void addSeasoning();
  void addVegetables();
}
