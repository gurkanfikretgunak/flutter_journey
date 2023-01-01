class JsonContactsApi {
  final String _contacts = '''
 {
    "contacts": [
      { 
        "name":"Ali",
        "surname":"Beyaz",
        "email": "alibeyaz@json.com",
        "favourite": true
      }
    ]
  }
 ''';

  String getContactJson() => _contacts;
}
