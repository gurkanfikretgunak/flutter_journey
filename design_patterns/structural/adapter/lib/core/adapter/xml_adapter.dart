import 'package:adapter/core/adapter/base/i_contact_adapter.dart';
import 'package:adapter/core/api/xml_contact.dart';
import 'package:adapter/core/model/contact_model.dart';
import 'package:xml/xml.dart';

class XmlAdapter extends IContactsAdapter {
  final XmlContactsApi _api = XmlContactsApi();

  @override
  List<Contact> getContacts() {
    final contactsXml = _api.getContactsXml();
    final contactList = _parseContactXml(contactsXml);
    return contactList;
  }

  List<Contact> _parseContactXml(String contactsXml) {
    final xmlDocument = XmlDocument.parse(contactsXml);
    final contactsList = <Contact>[];

    for (final xmlElement in xmlDocument.findAllElements('contact')) {
      final name = xmlElement.findElements('name').single.text;
      final surname = xmlElement.findElements('surname').single.text;
      final email = xmlElement.findElements('email').single.text;
      final favouriteString = xmlElement.findElements('favourite').single.text;
      final favourite = favouriteString.toLowerCase() == 'true';

      contactsList.add(Contact(
        name: name,
        surname: surname,
        fullName: '$name $surname',
        email: email,
        favourite: favourite,
      ));
    }
    return contactsList;
  }
}
