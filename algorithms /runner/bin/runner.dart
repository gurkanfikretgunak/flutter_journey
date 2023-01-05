import '../../complexity.dart';
import '../../basic_data_structures.dart';
import '../../stack.dart';

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
  //sets(anySetValues);
  /// [Stack]

  final stackInt = Stack<int>();
  final stackString = Stack<String>();

  // Push Method - int
  stackInt.push(27);
  stackInt.push(32);
  stackInt.push(23);
  // Push Method - String
  stackString.push('Bob');
  stackString.push('Mihcael');

  int stringTotalLength = stackString.totalLength;
  print('String values total length : $stringTotalLength');

  int intTotalLength = stackInt.totalLength;
  print('Int values total length : $intTotalLength');

  // Pop Method - int
  final popIntResult = stackInt.pop();
  print(popIntResult);
  // Pop Method - String
  final popStringResult = stackString.pop();
  print(popStringResult);
}
