import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/entity.dart';
import '../../domain/repository/user_repository.dart';
import '../datasource/user_remote_datasource.dart';

part 'user_repository_impl.g.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDatasourceImpl userRemoteDatasourceImpl =
      UserRemoteDatasourceImpl(
    client: http.Client(),
  );

  @override
  Future<Either<Exception, List<User>>> getAllUser(int page) async {
    try {
      List<User> allUser = await userRemoteDatasourceImpl.getAllUser(page);
      return right(allUser);
    } catch (e) {
      return left(Exception());
    }
  }

  @override
  Future<Either<Exception, User>> getUser(int id) async {
    try {
      User user = await userRemoteDatasourceImpl.getUser(id);
      return right(user);
    } catch (e) {
      return left(Exception());
    }
  }
}

@riverpod
UserRepositoryImpl userRepositoryImpl(UserRepositoryImplRef ref) {
  return UserRepositoryImpl();
}

@riverpod
Future<Either<Exception, User>> getUser(GetUserRef ref, int id) {
  return ref.watch(userRepositoryImplProvider).getUser(id);
}

@riverpod
Future<Either<Exception, List<User>>> getAllUser(GetAllUserRef ref, int page) {
  return ref.watch(userRepositoryImplProvider).getAllUser(page);
}
