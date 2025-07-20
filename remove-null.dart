void main() {
  List<String?> items = ['a', null, 'b', 'c', null];
  List<String> cleaned = items.where((e) => e != null).cast<String>().toList();
  print(cleaned); 
}
