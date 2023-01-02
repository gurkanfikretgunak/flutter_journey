import 'package:builder/core/ingredient/beef_patty.dart';
import 'package:builder/core/ingredient/grill_seasoning.dart';
import 'package:builder/core/ingredient/ketchup.dart';
import 'package:builder/core/ingredient/mustard.dart';
import 'package:builder/core/ingredient/onions.dart';
import 'package:builder/core/ingredient/pickle_slices.dart';
import 'package:builder/core/ingredient/regular_run.dart';
import 'package:builder/core/recipes/burger/builder/base/base_burger_builder.dart';

class HamburgerBuilder extends BurgerBuilderBase {
  HamburgerBuilder() {
    price = 3.0;
  }

  @override
  void addBuns() {
    burger.addIngredient(RegularRun());
  }

  @override
  void addCheese() {
    // Not needed
  }

  @override
  void addPatties() {
    burger.addIngredient(BeefPatty());
  }

  @override
  void addSauces() {
    burger.addIngredient(Ketchup());
    burger.addIngredient(Mustard());
  }

  @override
  void addSeasoning() {
    burger.addIngredient(GrillSeasoning());
  }

  @override
  void addVegetables() {
    burger.addIngredient(Onions());
    burger.addIngredient(PickleSlices());
  }
}
