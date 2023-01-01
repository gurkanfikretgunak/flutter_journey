import 'package:adapter/core/adapter/base/i_contact_adapter.dart';
import 'package:adapter/core/view/widgets/contact_section.dart';
import 'package:flutter/material.dart';

class ContactWidget {
  Widget contactSection(
    IContactsAdapter adapter,
    String headerText,
  ) =>
      ContactsSection(
        adapter: adapter,
        headerText: headerText,
      );
}
