import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../domain/entities/entity_login.dart';
import '../../domain/repository/auth_repository.dart';
import '../datasource/auth_remote_datasource.dart';
import '../model/login_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDatasourceImpl authRemoteDatasourceImpl =
      AuthRemoteDatasourceImpl(
    client: http.Client(),
  );

  @override
  Future<Either<Exception, EntityLogin>> login(
    String email,
    String password,
  ) async {
    try {
      LoginModel result = await authRemoteDatasourceImpl.login(email, password);
      return right(result);
    } catch (e) {
      return left(Exception());
    }
  }
}
