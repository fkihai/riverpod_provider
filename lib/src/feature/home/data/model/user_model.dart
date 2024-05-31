import '../../domain/entities/entity.dart';

class UserModel extends User {
  UserModel(
    super.id,
    super.email,
    super.firstName,
    super.lastname,
    super.avatar,
  );

  factory UserModel.fromjson(Map<String, dynamic> json) => UserModel(
        json['id'],
        json['email'],
        json['first_name'],
        json['last_name'],
        json['avatar'],
      );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'first_name': firstName,
      'last_name': lastname,
      'avatar': avatar,
    };
  }
}
