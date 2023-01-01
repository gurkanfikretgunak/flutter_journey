class JsonContactsApi {
  final String _contacts = '''
 {
    "contacts": [
      { 
        "name":"Ali",
        "surname":"Gunak",
        "email": "aligunak@json.com",
        "favourite": true
      }
    ]
  }
 ''';

  String getContactJson() => _contacts;
}
