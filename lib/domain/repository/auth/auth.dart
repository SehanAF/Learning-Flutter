import 'package:dartz/dartz.dart';
import 'package:myapp/data/models/auth/create_user_req.dart';
import 'package:myapp/data/models/auth/sign_user_req.dart';

/// Abstract class yang berisi metode-metode untuk authentikasi user.
///
/// Class ini berisi dua metode, yaitu:
/// - `signup`: Metode untuk mendaftarkan user baru.
/// - `signin`: Metode untuk masuk ke dalam aplikasi dengan menggunakan akun yang sudah ada.
///
/// Kedua metode ini harus di-override oleh class yang meng-implement-kan class ini.
abstract class AuthRepository {

  /// Mendaftarkan user baru.
  ///
  /// Metode ini akan membuat akun baru dan menyimpannya di dalam database.
  ///
  /// @return [Future<void>] yang akan selesai ketika proses pendaftaran selesai.
  Future<Either> signup(CreateUserReq createUserReq);

  /// Masuk ke dalam aplikasi dengan menggunakan akun yang sudah ada.
  ///
  /// Metode ini akan memeriksa apakah akun yang di-inputkan valid atau tidak.
  /// Jika valid, maka user akan di-log-in dan di-redirect ke halaman utama.
  ///
  /// @return [Future<void>] yang akan selesai ketika proses log-in selesai.
  Future<Either> signin(SigninUserReq signinUserReq);
}
