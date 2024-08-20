/// Class yang merepresentasikan user dalam aplikasi
/// 
/// Kelas ini memiliki 3 properti, yaitu:
/// - id: string yang unik untuk setiap user
/// - fullname: nama lengkap dari user
/// - email: alamat email dari user
class UserEntity{
  /// string yang unik untuk setiap user
  final String ? id;

  /// nama lengkap dari user
  final String ? fullname;

  /// alamat email dari user
  final String ? email;

  /// Konstruktor untuk membuat objek UserEntity
  /// 
  /// Menerima 3 parameter, yaitu id, fullname, dan email
  UserEntity({
    /// string yang unik untuk setiap user
    this.id,

    /// nama lengkap dari user
    this.fullname,

    /// alamat email dari user
    this.email
  });
}
