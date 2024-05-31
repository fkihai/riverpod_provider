import 'dart:convert';
import 'package:riverpod_provider/src/core/error/exception.dart';

import '../model/user_model.dart';
import 'package:http/http.dart' as http;

abstract class UserRemoteDataSource {
  Future<List<UserModel>> getAllUser(int page);
  Future<UserModel> getUser(int id);
}

class UserRemoteDatasourceImpl implements UserRemoteDataSource {
  final http.Client client;
  UserRemoteDatasourceImpl({required this.client});

  @override
  Future<List<UserModel>> getAllUser(int page) async {
    Uri url = Uri.parse('https://reqres.in/api/users?page=$page');
    var response = await client.get(url);

    if (response.statusCode == 200) {
      Map<String, dynamic> dataBody = json.decode(response.body);
      List dataMap = dataBody['data'];
      List<UserModel> data = dataMap.map((e) => UserModel.fromjson(e)).toList();
      return data;
    } else {
      throw StatusCodeException(message: 'failed fecth data user');
    }
  }

  @override
  Future<UserModel> getUser(int id) async {
    Uri url = Uri.parse('https://reqres.in/api/users/$id');
    var response = await client.get(url);

    if (response.statusCode == 200) {
      Map<String, dynamic> dataBody = json.decode(response.body);
      return UserModel.fromjson(dataBody['data']);
    } else {
      throw StatusCodeException(message: 'failed fecth data list user');
    }
  }
}
