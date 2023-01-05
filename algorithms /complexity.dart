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

bool checkValueExist(int intValue, List<int> anyIntValues) {
  print('Int list values : $anyIntValues');
  print('Exist int value: $intValue');
  for (final e in anyIntValues) {
    if (e == intValue) return true;
  }
  return false;
}

bool checkNaive(int intValue, List<int> anyIntValues) {
  print('Int list values : $anyIntValues');
  print('Exist int value: $intValue');

  if (anyIntValues.isEmpty) return false;
  final middleIndex = anyIntValues.length ~/ 2;

  if (intValue > anyIntValues[middleIndex]) {
    for (var i = middleIndex; i < anyIntValues.length; i++) {
      if (anyIntValues[i] == intValue) return true;
    }
  } else {
    for (var i = middleIndex; i >= 0; i--) {
      if (anyIntValues[i] == intValue) return true;
    }
  }

  return false;
}

int subTotalFromOneTo(int intValue) {
  int subTotal = 0;
  for (int i = 1; i <= intValue; i++) {
    subTotal += i;
  }

  return subTotal;
}

int betterSubTotalFromOneTo(int intValue) {
  return intValue * (intValue + 1) ~/ 2;
}

List<int> fillListGrowable(int intValue, bool growableValue) {
  return List.filled(intValue, 0, growable: growableValue);
}

List<int> multiplyListValue(int intValue) {
  return List.filled(intValue, 0 * intValue);
}
