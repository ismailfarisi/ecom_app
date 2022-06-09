import 'package:e_store_coorgle/model/user.dart';

import '../../utils/result.dart';

abstract class AuthRepository {
  Future<Result<bool>> login(String phoneNo);
  Future<Result<User?>> verifyCode(String code);
  Future<Result<User>> createUser(String name, String email);
  Future<Result<User>> getUser();
  Future<Result<bool>> logout();
}
