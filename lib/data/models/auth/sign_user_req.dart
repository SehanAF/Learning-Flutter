/// class ini merepresentasikan data yang dibutuhkan untuk masuk ke dalam aplikasi
class SigninUserReq {
  /// Alamat email dari user.
  ///
  /// Digunakan untuk mendaftarkan user baru atau masuk ke dalam aplikasi.
  final String email;

  /// Kata sandi dari user.
  ///
  /// Digunakan untuk mendaftarkan user baru atau masuk ke dalam aplikasi.
  final String password;

  /// Konstruktor dari kelas [SignUserReq].
  ///
  /// Digunakan untuk membuat objek dari kelas ini dengan menggunakan data yang diberikan.
  ///
  /// Parameter [email] dan [password] digunakan untuk membuat objek dari kelas ini.
  SigninUserReq({required this.email, required this.password});
}
