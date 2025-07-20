void main() {
  List<int> numbers = [5, 7, 8, 10];
  int? firstEven = numbers.firstWhere((n) => n % 2 == 0, orElse: () => -1);
  print(firstEven); 
}
