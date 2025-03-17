List<int> filterEvenNumbers(List<int> numbers) {
  List<int> evenList = [];

  for (var number in numbers) {
    if (number % 2 == 0) {
      evenList.add(number);
      print(number);
    }
  }
  return evenList;
}

void main() {
  List<int> list = [10, 1, 5354, 56, 789, 456, 9865, 0, 21];
  print(filterEvenNumbers(list));
}
