import 'package:dartz/dartz.dart';

import '../entities/entity.dart';
import '../repository/user_repository.dart';

class GetUser {
  final UserRepository userRepository;
  GetUser({
    required this.userRepository,
  });

  Future<Either<Exception, User>> execute(int id) async {
    return await userRepository.getUser(id);
  }
}
