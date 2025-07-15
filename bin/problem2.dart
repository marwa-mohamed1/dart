enum Role { admin, guest, user }

class User {
  String? firstName;
  String? middleName;
  String? lastName;
  dynamic role;

  String getFullName() {
    String fullName = '';
    this
      ..firstName ??= ''
      ..middleName ??= ''
      ..lastName ??= '';
    fullName = "$firstName $middleName $lastName".trim();
    return fullName;
  }

  Role getRole() {
    return (role is String && role == 'admin')
        ? Role.admin
        : (role == 'guest')
            ? Role.guest
            : Role.user;
  }
}

void main() {
  var user = User()
    ..firstName = "Sara"
    ..middleName = null
    ..lastName = "Ahmed"
    ..role = "admin";

  print("Full Name: ${user.getFullName()}");
  print("Role: ${user.getRole()}");
}
