# 🏨 Hotel System (Dart)

This is a simple hotel system simulation built with Dart.  
It demonstrates **10 essential Object-Oriented Programming (OOP)** concepts using a clean structure and real-life examples such as clients, employees, managers, and hotel rooms.

---

## 💡 OOP Concepts Implemented

### 1. Class  
A class is a blueprint for creating objects.  
✅ Implemented in:  
`Person`, `Client`, `Employee`, `Manager`, and `Room` classes.

```dart
class Client extends Person {
  // ...
}

2. Object
An object is an instance of a class.
✅ Example:
Client client1 = Client("Ahmed", "123456789", 101, "01012345678");
Room room1 = Room(101, 1000);

3. Constructor
Initializes the object’s properties.
✅ Implemented in:
Client(String name, String Id, this.roomNumber, this.tel) : super(name, Id);

4. Method
A function defined inside a class.
✅ Example:bool bookRoom() {
  // logic to book the room
}
5. Property
Class variables (fields) are considered properties.
✅ Example:
String _name;
bool isAvailable;

6. Encapsulation
Control access to class members using private fields and public methods.
✅ Example:
String _name;             // private
String get name => _name; // public getter

7. Getter/Setter
Controlled access to fields.
✅ Implemented in:
String get name => _name;
set name(String newName) => _name = newName;

8. Static Members
Belong to the class, not instances.
✅ Example:
static int totalRooms = 0;

static int getTotalRooms() {
  return totalRooms;
}

9. Inheritance
A class inherits from another to reuse logic.
✅ Implemented as:
class Client extends Person { ... }
class Employee extends Person { ... }
class Manager extends Person { ... }

10. Polymorphism
Same method behaves differently depending on the class.
✅ Implemented via method overriding:

@override
String getInfo() {
  return 'Manager: $name, Department: $department';
}

🛠 Project Structure

hotel_project/
│
├── main.dart       # Entry point
├── person.dart     # Abstract class with shared info
├── client.dart     # Client logic
├── employee.dart   # Employee logic
├── manager.dart    # Manager logic
└── room.dart       # Room class and booking system


