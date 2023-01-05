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

void sets(Set<dynamic> anySetValues) {
  anySetValues.add('Candy');
  print(anySetValues);

  final anyList = [1, 5, 5, 4, 3, 4, 4, 2];
  final anySet = <int>{};
  for (final value in anyList) {
    if (anySet.contains(value)) {}
    anySet.add(value);
  }
  print(anySet);
}
