import 'dart:collection';

void lists(List<String> anyStringValues) {
  print(anyStringValues[0]);
  print(anyStringValues[1]);
  print(anyStringValues[2]);

  anyStringValues.add('Robert');
  print(anyStringValues);
  anyStringValues.insert(2, 'Bull');
  print(anyStringValues);
}

void maps(Map<String, dynamic> anyMapValues) {
  anyMapValues['Phill'] = 0;
  print(anyMapValues);

  final hashMap = HashMap.of(anyMapValues);
  print(hashMap);
}
