// Complexity

getFirst(List<String> anyStringValues) {
  if (anyStringValues.isNotEmpty) {
    print(anyStringValues.first);
  } else {
    print('Dont have any String Value 🤷‍♂️ ');
  }
}

getValues(List<String> anyStringValues) {
  if (anyStringValues.isNotEmpty) {
    print('String Value Length: ${anyStringValues.length}');
    for (var anyString in anyStringValues) {
      print(anyString);
    }
  } else {
    print('Dont have any String Value 🤷‍♂️ ');
  }
}

void getMoreValues(List<String> anyStringValues) {
  if (anyStringValues.isNotEmpty) {
    print('String Value Length: ${anyStringValues.length}');
    for (final _ in anyStringValues) {
      for (final anyString in anyStringValues) {
        print(anyString);
      }
    }
  } else {
    print('Dont have any String Value 🤷‍♂️ ');
  }
}
