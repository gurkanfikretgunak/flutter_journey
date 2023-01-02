import 'package:bridge/core/entities/base/base_entity.dart';
import 'package:faker/faker.dart';

class Customer extends EntityBase {
  late String prefix;
  late String firstName;
  late String lastName;
  late String email;

  Customer() {
    prefix = faker.person.prefix();
    firstName = faker.person.prefix();
    lastName = faker.person.lastName();
    email = faker.internet.email();
  }

  Customer.fromJson(Map<String, dynamic> json)
      : prefix = json['prefix'] as String,
        firstName = json['firstName'] as String,
        lastName = json['lastName'] as String,
        email = json['email'] as String,
        super.fromJson(json);

  Map<String, dynamic> toJson() => {
        'id': id,
        'prefix': prefix,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
      };
}
