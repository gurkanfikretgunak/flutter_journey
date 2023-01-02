import 'package:builder/core/ingredient/base/base_ingredient.dart';

class ChickenPatty extends Ingredient {
  ChickenPatty() {
    name = 'Chicken Patty';
    allergens = [
      'Wheat',
      'Cooked in the same fryer that we use for Buttermilk Crispy Chicken which contains a milk allergen'
    ];
  }
}
