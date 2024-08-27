import 'package:dartz/dartz.dart';
import 'package:myapp/data/models/auth/create_user_req.dart';
import 'package:myapp/data/models/auth/sign_user_req.dart';
import 'package:myapp/data/sources/auth/auth_firebase_service.dart';
import 'package:myapp/domain/repository/auth/auth.dart';
import 'package:myapp/service_locator.dart';

class AuthRepositoryImpl extends AuthRepository{
  @override
  /// Method untuk melakukan login user
  /// dengan menggunakan parameter [SigninUserReq]
  /// yang berisi email dan password.
  ///
  /// Method ini akan mengembalikan hasil dalam bentuk [Either].
  /// Jika proses signin berhasil maka akan mengembalikan [Right]
  /// dengan nilai string yang berisi pesan berhasil.
  /// Jika proses signin gagal maka akan mengembalikan [Left]
  /// dengan nilai string yang berisi pesan error.
  Future<Either> signin(SigninUserReq signinUserReq) async {
    return await s1<AuthFireBaseService>().signin(signinUserReq);
  }

  @override
  /// Method untuk melakukan registrasi user baru
  /// dengan menggunakan parameter [CreateUserReq].
  ///
  /// Method ini akan mengembalikan hasil dalam bentuk [Either].
  /// Jika proses registrasi berhasil maka akan mengembalikan [Right]
  /// dengan nilai string yang berisi pesan berhasil.
  /// Jika proses registrasi gagal maka akan mengembalikan [Left]
  /// dengan nilai string yang berisi pesan error.
  Future<Either> signup(CreateUserReq createUserReq) async {
    return await s1<AuthFireBaseService>().signup(createUserReq);
  }

}