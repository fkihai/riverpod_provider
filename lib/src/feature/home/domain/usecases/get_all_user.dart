import 'package:dartz/dartz.dart';

import '../entities/entity.dart';
import '../repository/user_repository.dart';

class GetAllUser {
  final UserRepository userRepository;
  GetAllUser({required this.userRepository});

  Future<Either<Exception, List<User>>> execute(int page) async {
    return await userRepository.getAllUser(page);
  }
}
