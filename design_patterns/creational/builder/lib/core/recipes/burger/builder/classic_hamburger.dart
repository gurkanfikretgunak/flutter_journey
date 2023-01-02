import 'package:builder/core/ingredient/beef_patty.dart';
import 'package:builder/core/ingredient/cheese.dart';
import 'package:builder/core/ingredient/grill_seasoning.dart';
import 'package:builder/core/ingredient/hamburger_run.dart';
import 'package:builder/core/ingredient/hamburger_sauce.dart';
import 'package:builder/core/ingredient/onions.dart';
import 'package:builder/core/ingredient/pickle_slices.dart';
import 'package:builder/core/ingredient/shredded_lettuce.dart';
import 'package:builder/core/recipes/burger/builder/base/base_burger_builder.dart';

class ClassicHamburgerBuilder extends BurgerBuilderBase {
  ClassicHamburgerBuilder() {
    price = 9.99;
  }
  @override
  void addBuns() {
    burger.addIngredient(HamburgerRun());
  }

  @override
  void addCheese() {
    burger.addIngredient(Cheese());
  }

  @override
  void addPatties() {
    burger.addIngredient(BeefPatty());
  }

  @override
  void addSauces() {
    burger.addIngredient(HamburgerSauce());
  }

  @override
  void addSeasoning() {
    burger.addIngredient(GrillSeasoning());
  }

  @override
  void addVegetables() {
    burger.addIngredient(Onions());
    burger.addIngredient(PickleSlices());
    burger.addIngredient(ShreddedLettuce());
  }
}
