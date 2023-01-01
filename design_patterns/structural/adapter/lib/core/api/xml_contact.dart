class XmlContactsApi {
  final String _contacts = '''
  <?xml version="1.0"?>
  <contacts>
    <contact>
      <name>Mehmet</name>
      <surname>Gunak</surname>
      <email>mehmetgunak@xml.com</email>
      <favourite>false</favourite>
    </contact>
  </contacts>
  ''';

  String getContactsXml() => _contacts;
}
