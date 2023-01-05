import '../../complexity.dart';

List<String> anyStringValues = ["Bob", "Micheal", "Richard"];
List<int> anyIntValues = [1, 2, 3, 4];
int intValue = 3;

void main(List<String> arguments) {
  //getFirst(anyStringValues);
  //getValues(anyStringValues);
  //getMoreValues(anyStringValues);
  bool result = checkValueExist(intValue, anyIntValues);
  print(result);
}
