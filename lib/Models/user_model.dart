class UserModel {
  final String username;
  final String email;
  final String? password;
  final String phonenumber;
  final String address;

  UserModel({
    required this.username,
    required this.email,
    this.password,
    required this.phonenumber,
    required this.address,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      username: json['username'],
      email: json['email'],
      phonenumber: json['phonenumber'],
      address: json['address'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'email': email,
      'phonenumber': phonenumber,
      'address': address,
    };
  }

  UserModel copyWith({
    String? username,
    String? email,
    String? password,
    String? phonenumber,
    String? address,
  }) {
    return UserModel(
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
      phonenumber: phonenumber ?? this.phonenumber,
      address: address ?? this.address,
    );
  }
}
