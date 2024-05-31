import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:riverpod_provider/src/core/error/exception.dart';

import '../model/login_model.dart';

abstract class AuthRemoteDataSource {
  Future<LoginModel> login(String email, String password);
}

class AuthRemoteDatasourceImpl implements AuthRemoteDataSource {
  final http.Client client;
  AuthRemoteDatasourceImpl({required this.client});

  @override
  Future<LoginModel> login(String email, String password) async {
    await Future.delayed(const Duration(seconds: 3));
    Uri url = Uri.parse('https://reqres.in/api/login');
    var response = await client.post(url, body: {
      "email": email,
      "password": password,
    });

    if (response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(response.body);
      return LoginModel.fromJson(data);
    } else {
      throw StatusCodeException(message: 'Login Failed');
    }
  }
}
