import 'package:adapter/core/model/contact_model.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  final Contact contact;

  const ContactCard({
    super.key,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(contact.fullName),
        subtitle: Text(contact.email),
        leading: CircleAvatar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          child: Text(contact.fullName[0]),
        ),
        trailing: Icon(
          contact.favourite ? Icons.star : Icons.star_border,
        ),
      ),
    );
  }
}
