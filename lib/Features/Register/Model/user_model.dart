class UserData {
  final String firstName;
  final String lastName;
  final String email;
  final String phoneNumber;
  final String address;

  UserData(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.phoneNumber,
      required this.address});

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
        firstName: json["first_name"],
        email: json["email"],
        lastName: json["last_name"],
        phoneNumber: json["phone"],
        address: json["address"]);
  }
}
