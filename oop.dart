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

class Client extends Person {
  int roomNumber;
  String tel;

  Client(String name, String Id, this.roomNumber, this.tel) : super(name, Id);

  @override
  String getInfo() {
    return 'Client: $name, Room: $roomNumber';
  }
}

class Employee extends Person {
  String jobTitle;
  int salary;

  Employee(String name, String Id, this.jobTitle, this.salary) : super(name, Id);

  @override
  String getInfo() {
    return 'Employee: $name, Job: $jobTitle, Salary: $salary';
  }
}

class Manager extends Person {
  String department;

  Manager(String name, String Id, this.department) : super(name, Id);

  @override
  String getInfo() {
    return 'Manager: $name, Department: $department';
  }
}

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
