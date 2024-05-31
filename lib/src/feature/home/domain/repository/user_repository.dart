import 'package:dartz/dartz.dart';

import '../entities/entity.dart';

abstract class UserRepository {
  Future<Either<Exception, User>> getUser(int id);
  Future<Either<Exception, List<User>>> getAllUser(int page);
}
