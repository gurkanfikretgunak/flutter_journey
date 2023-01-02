import 'dart:convert';

import 'package:bridge/core/entities/base/base_entity.dart';
import 'package:bridge/core/entities/customer_entity.dart';
import 'package:bridge/core/entities/order_entity.dart';

class JsonHelper {
  const JsonHelper._();

  static String serialiseObject(EntityBase entityBase) {
    return jsonEncode(entityBase);
  }

  static T deserialiseObject<T extends EntityBase>(String jsonString) {
    final json = jsonDecode(jsonString)! as Map<String, dynamic>;

    switch (T) {
      case Customer:
        return Customer.fromJson(json) as T;
      case Order:
        return Order.fromJson(json) as T;
      default:
        throw Exception("Type of '$T' is not supported.");
    }
  }
}
