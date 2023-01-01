import 'package:adapter/core/adapter/json_adapter.dart';
import 'package:adapter/core/adapter/xml_adapter.dart';
import 'package:adapter/core/view/contact.widgets.dart';
import 'package:flutter/material.dart';

class ContactView extends StatelessWidget with ContactWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ScrollConfiguration(
        behavior: const ScrollBehavior(),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              contactSection(JsonAdapter(), 'Contact From JSON'),
              contactSection(XmlAdapter(), 'Contact From XML'),
            ],
          ),
        ),
      ),
    );
  }
}
