void main() {
  List<String> words = ['hi', 'dart', 'awesome'];
  Map<String, int> lengths = {
    for (var word in words) word: word.length
  };
  print(lengths); 
}
