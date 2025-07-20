void main() {
  String input = "abcba";
  bool isPalindrome = input.split('').join() == input.split('').reversed.join();
  print(isPalindrome); 
}
