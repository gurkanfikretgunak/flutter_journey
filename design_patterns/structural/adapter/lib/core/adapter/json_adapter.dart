import 'dart:convert';

import 'package:adapter/core/adapter/i_contact_adapter.dart';
import 'package:adapter/core/api/json_contact.dart';
import 'package:adapter/core/model/contact_model.dart';

class JsonAdapter extends IContactsAdapter {
  final JsonContactsApi _api = JsonContactsApi();
  @override
  List<Contact> getContacts() {
    final contactsJson = _api.getContactJson();

    final contactsList = _parseContactJson(contactsJson);

    return contactsList;
  }

  List<Contact> _parseContactJson(String contactsJson) {
    final contactsMap = json.decode(contactsJson) as Map<String, dynamic>;
    final contactsJsonList = contactsMap['contacts'] as List;
    final contactList = contactsJsonList.map((json) {
      final contactJson = json as Map<String, dynamic>;
      return Contact(
          name: contactJson['name'] as String,
          surname: contactJson['surname'] as String,
          email: contactJson['email'] as String,
          favourite: contactJson['favourite'] as bool,
          fullName:
              '${contactJson['name'] as String} ${contactJson['surname'] as String}');
    }).toList();
    return contactList;
  }
}
