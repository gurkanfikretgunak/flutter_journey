import '../../complexity.dart';
import '../../basic_data_structures.dart';

List<String> anyStringValues = ["Bob", "Micheal", "Richard", "Carl"];
Map<String, int> anyMapValues = {
  'Bob': 3,
  'Micheal': 7,
  'Richard': 2,
  'Carl': 2,
};
Set<String> anySetValues = {"Bob", "Micheal", "Richard"};
List<int> anyIntValues = [1, 2, 3, 4, 5, 6];
int intValue = 9;
bool growableValue = true;

void main(List<String> arguments) {
  /// [Complexity]
  //getFirst(anyStringValues);
  //getValues(anyStringValues);
  //getMoreValues(anyStringValues);
  //bool result = checkValueExist(intValue, anyIntValues);
  //bool result = checkNaive(intValue, anyIntValues);
  //int result = betterSubTotalFromOneTo(intValue);
  //List<int> result = fillListGrowable(intValue, growableValue);
  //List<int> result = multiplyListValue(intValue);
  /// [Basic Data Structures]
  //lists(anyStringValues);
  //maps(anyMapValues);
  sets(anySetValues);
}
