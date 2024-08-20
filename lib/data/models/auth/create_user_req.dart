/// Kelas ini merepresentasikan data yang dibutuhkan untuk membuat user baru
///
/// Kelas ini memiliki 3 properti, yaitu:
/// - [fullname]: nama lengkap dari user
/// - [email]: alamat email dari user
/// - [password]: kata sandi dari user
///
/// Kelas ini digunakan untuk membuat data user baru yang akan di simpan
/// di database Firebase. Data user ini akan digunakan untuk proses autentikasi
/// user di dalam aplikasi.
class CreateUserReq {
  /// Nama lengkap dari user
  final String fullname;

  /// Alamat email dari user
  final String email;

  /// Kata sandi dari user
  final String password;

  /// Konstruktor dari kelas ini
  ///
  /// Konstruktor ini digunakan untuk membuat objek dari kelas ini
  /// dengan menggunakan data yang diberikan.
  ///
  /// [fullname], [email], dan [password] adalah data yang dibutuhkan
  /// untuk membuat objek dari kelas ini.
  CreateUserReq({required this.fullname, required this.email, required this.password});
}
