import 'package:bridge/core/entities/base/base_entity.dart';
import 'package:faker/faker.dart';

class Order extends EntityBase {
  late List<String> cuisine;
  late double price;
  late double tax;
  late double total;

  Order() {
    cuisine =
        List.generate(random.integer(3, min: 1), (_) => faker.food.cuisine());
    price = random.decimal(scale: 20, min: 5);
    tax = price * 0.18;
    total = price + tax;
  }

  Order.fromJson(Map<String, dynamic> json)
      : cuisine = List.from(json['cuisine'] as List),
        price = json['price'] as double,
        tax = json['tax'] as double,
        total = json['total'] as double,
        super.fromJson(json);

  Map<String, dynamic> toJson() => {
        'id': id,
        'cuisine': dishes,
        'price': price,
        'tax': tax,
        'total': total,
      };
}
