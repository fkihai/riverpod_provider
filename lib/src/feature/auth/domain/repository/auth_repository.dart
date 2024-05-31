import 'package:dartz/dartz.dart';
import 'package:riverpod_provider/src/feature/auth/domain/entities/entity_login.dart';

abstract class AuthRepository {
  Future<Either<Exception, EntityLogin>> login(String email, String password);
}
