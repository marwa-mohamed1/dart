🏨 Hotel System in Dart
This project demonstrates Object-Oriented Programming (OOP) concepts in Dart by modeling a hotel system. It includes people (Client, Employee, Manager) and room booking functionality using classes, inheritance, abstract classes, getters, setters, static members, and method overriding.

📁 Project Structure
🔹 Abstract Class: Person
dart
Copy code
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
Purpose: Represents a generic person.

Abstract: Cannot be directly instantiated.

Encapsulation: Uses private variables (_name, _Id) with public getters and setters.

Polymorphism: Defines an abstract method getInfo() to be implemented by subclasses.

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
Inherits from Person.

Adds specific attributes like roomNumber and tel.

Implements getInfo() with customized output.

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
Adds jobTitle and salary.

Also overrides getInfo() with job details.

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
Adds department attribute.

Overrides getInfo() with manager-specific data.

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
Encapsulation: Manages room properties like number, price, and isAvailable.

Static Members:

totalRooms: Tracks how many rooms have been created.

getTotalRooms(): Returns the total count.

Methods:

bookRoom(): Books the room if available.

freeRoom(): Marks the room as available again.

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
What It Does:
Creates instances of Client, Employee, and Manager.

Creates two Room objects.

Displays their information using getInfo().

Demonstrates booking logic using bookRoom().

Prints the total number of rooms.

✅ Concepts Demonstrated
Concept	Usage Example
Abstract Class	Person
Inheritance	Client, Employee, Manager
Encapsulation	Private fields with getters/setters
Polymorphism	getInfo() method overridden
Static Members	Room.totalRooms
Object Instantiation	Client client1 = ...
