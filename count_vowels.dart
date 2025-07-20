void main() {
  String word = "flutter";
  int count = word
      .toLowerCase()
      .split('')
      .where((char) => 'aeiou'.contains(char))
      .length;
  print(count);
}
