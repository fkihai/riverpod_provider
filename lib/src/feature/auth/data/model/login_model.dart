import 'package:riverpod_provider/src/feature/auth/domain/entities/entity_login.dart';

class LoginModel extends EntityLogin {
  LoginModel({required super.token});

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(token: json['token']);
  }

  Map<String, dynamic> toJson() {
    return {
      'token': token,
    };
  }
}
