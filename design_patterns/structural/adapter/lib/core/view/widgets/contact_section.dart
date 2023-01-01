import 'package:adapter/core/adapter/base/i_contact_adapter.dart';
import 'package:adapter/core/model/contact_model.dart';
import 'package:adapter/core/view/widgets/contact_card.dart';
import 'package:adapter/core/view/widgets/platform_button.dart';
import 'package:flutter/material.dart';

class ContactsSection extends StatefulWidget {
  final IContactsAdapter adapter;
  final String headerText;

  const ContactsSection({
    super.key,
    required this.adapter,
    required this.headerText,
  });

  @override
  _ContactsSectionState createState() => _ContactsSectionState();
}

class _ContactsSectionState extends State<ContactsSection> {
  final List<Contact> contacts = [];

  void _getContacts() {
    setState(() {
      contacts.addAll(widget.adapter.getContacts());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(widget.headerText),
        const SizedBox(height: 10),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: _ContactsSectionContent(
            contacts: contacts,
            onPressed: _getContacts,
          ),
        ),
      ],
    );
  }
}

class _ContactsSectionContent extends StatelessWidget {
  final List<Contact> contacts;
  final VoidCallback onPressed;

  const _ContactsSectionContent({
    required this.contacts,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return contacts.isEmpty
        ? PlatformButton(
            materialColor: Colors.black,
            materialTextColor: Colors.white,
            onPressed: onPressed,
            text: 'Get contacts',
          )
        : Column(
            children: <Widget>[
              for (var contact in contacts)
                ContactCard(
                  contact: contact,
                )
            ],
          );
  }
}
