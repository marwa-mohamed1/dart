import 'dart:math';
/*
the purpose of the ? operator:make the variable nullable can be = null
 */

void main() {
  //2nd problem
  late String address;

  address = 'US';
  print(address);

  //3rd problem(declare a nullable type)
  String? name;
  print(name);

  //4th problem

  int? age = null;
  print(age);

  //5th ptoblrm

  int checkValue(int? number) {
    return number ?? 0;
  }

  print(checkValue(null)); // Output: 0
  print(checkValue(5)); // Output: 5

  //6th problem

  int? generateRandom() {
    Random random = Random();
    return random.nextBool() ? 100 : null;
  }

  int status = generateRandom() ?? 0;
  print(status);
}
