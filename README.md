# 🏨 Hotel System in Dart

This project demonstrates **Object-Oriented Programming (OOP)** concepts in Dart by modeling a simple hotel system. It includes classes for people (`Client`, `Employee`, `Manager`) and room booking logic, showcasing inheritance, abstraction, encapsulation, static members, and method overriding.

---

## 📁 Project Structure

### 🔹 Abstract Class: `Person`

```dart
abstract class Person {
  String _name;
  String _Id;

  Person(this._name, this._Id);

  String get name => _name;
  set name(String newName) => _name = newName;

  String get nationalId => _Id;
  set nationalId(String newId) => _Id = newId;

  String getInfo();
}
Represents a generic person (abstract class).

Uses private fields with getters and setters for encapsulation.

Defines an abstract method getInfo() that must be overridden.

🔹 Subclasses of Person
1. 👤 Client
dart
Copy code
class Client extends Person {
  int roomNumber;
  String tel;

  Client(String name, String Id, this.roomNumber, this.tel) : super(name, Id);

  @override
  String getInfo() {
    return 'Client: $name, Room: $roomNumber';
  }
}
Inherits from Person

Adds roomNumber and tel

Overrides getInfo() method

2. 👷 Employee
dart
Copy code
class Employee extends Person {
  String jobTitle;
  int salary;

  Employee(String name, String Id, this.jobTitle, this.salary) : super(name, Id);

  @override
  String getInfo() {
    return 'Employee: $name, Job: $jobTitle, Salary: $salary';
  }
}
Adds jobTitle and salary

Overrides getInfo() to show job information

3. 👨‍💼 Manager
dart
Copy code
class Manager extends Person {
  String department;

  Manager(String name, String Id, this.department) : super(name, Id);

  @override
  String getInfo() {
    return 'Manager: $name, Department: $department';
  }
}
Adds department field

Custom implementation of getInfo()

🔹 Class: Room
dart
Copy code
class Room {
  static int totalRooms = 0;

  int number;
  int price;
  bool isAvailable;

  Room(this.number, this.price, {this.isAvailable = true}) {
    totalRooms++;
  }

  bool bookRoom() {
    if (isAvailable) {
      isAvailable = false;
      return true;
    }
    return false;
  }

  void freeRoom() {
    isAvailable = true;
  }

  static int getTotalRooms() {
    return totalRooms;
  }
}
Represents a room in the hotel

Tracks number, price, and availability

Uses static variable to count total rooms

Includes bookRoom() and freeRoom() methods

🚀 Main Function
dart
Copy code
void main() {
  Client client1 = Client("Ahmed", "123456789", 101, "01012345678");
  Employee employee1 = Employee("Mona", "987654321", "Receptionist", 8000);
  Manager manager1 = Manager("Youssef", "1122334455", "Operations");

  Room room1 = Room(101, 1000);
  Room room2 = Room(102, 800, isAvailable: false);

  print(client1.getInfo());
  print(employee1.getInfo());
  print(manager1.getInfo());

  print("Total rooms: ${Room.getTotalRooms()}");

  if (room1.bookRoom()) {
    print("Room ${room1.number} booked successfully.");
  } else {
    print("Room ${room1.number} is already booked.");
  }

  if (room2.bookRoom()) {
    print("Room ${room2.number} booked successfully.");
  } else {
    print("Room ${room2.number} is already booked.");
  }
}
💡 What It Shows
Creates instances of Client, Employee, and Manager

Creates and manages Room objects

Demonstrates room booking logic

Prints total number of rooms and booking results

✅ Concepts Demonstrated
Concept	Description
Abstract Class	Person defines a shared interface
Inheritance	Client, Employee, Manager extend Person
Encapsulation	Private fields with getters/setters
Polymorphism	getInfo() overridden in each class
Static Members	Room.totalRooms counts created rooms
Object Creation	Instantiating and using objects


