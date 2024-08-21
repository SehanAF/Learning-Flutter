import 'package:dartz/dartz.dart';
import 'package:myapp/core/usecase/usecase.dart';
import 'package:myapp/data/models/auth/create_user_req.dart';
import 'package:myapp/data/models/auth/sign_user_req.dart';
import 'package:myapp/domain/repository/auth/auth.dart';
import 'package:myapp/service_locator.dart';

class SigninUseCase implements UseCase<Either, SigninUserReq> {

  @override
  /// Fungsi ini digunakan untuk melakukan registrasi user baru
  /// dengan menggunakan parameter [CreateUserReq].
  /// Fungsi ini akan memanggil metode `signup` dari [AuthRepository]
  /// dengan parameter [CreateUserReq] yang diberikan.
  /// Fungsi ini akan mengembalikan hasilnya dalam bentuk [Either].
  /// Jika proses registrasi berhasil maka akan mengembalikan [Right]
  /// dengan nilai string yang berisi pesan berhasil.
  /// Jika proses registrasi gagal maka akan mengembalikan [Left]
  /// dengan nilai string yang berisi pesan error.
  Future<Either> call({SigninUserReq ? params}) async {
    // Memanggil metode signup dari AuthRepository dengan parameter params
    return await s1<AuthRepository>().signin(params!);
  }
}
