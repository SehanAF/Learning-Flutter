// UseCase adalah abstraksi dari sebuah logika atau operasi yang ingin kita jalankan dalam aplikasi.
// Class ini memiliki dua generic type, yaitu [Type] dan [Params].
// [Type] adalah hasil yang diharapkan dari operasi yang dijalankan, sedangkan [Params] adalah parameter yang dibutuhkan untuk melakukan operasi tersebut.
// UseCase harus diimplementasikan oleh class yang ingin melakukan operasi tertentu dalam aplikasi tersebut.
// Setiap class yang mengimplementasikan UseCase harus menentukan [Type] dan [Params] sesuai dengan operasi yang akan dilakukan.
// Contoh penggunaan:
// class LoginUseCase extends UseCase<String,LoginParams> {
//   final AuthRepository _authRepository;
//   LoginUseCase(this._authRepository);
//   @override
//   Future<String> call(LoginParams params) async {
//     // Lakukan operasi login menggunakan data yang diberikan oleh params
//     // dan mengembalikan hasilnya dalam bentuk String
//     return await _authRepository.signin(params);
//   }
// }
// Dalam contoh di atas, LoginUseCase adalah implementasi dari UseCase yang akan melakukan operasi login.
// [Type] diatur menjadi String karena hasil operasi login akan merupakan string.
// [Params] diatur menjadi LoginParams karena operasi login membutuhkan data seperti email dan password.
// Dalam method call, kita melakukan operasi login menggunakan data yang diberikan oleh params
// dan mengembalikan hasilnya dalam bentuk String.
abstract class UseCase<Type,Params> {
  Future<Type> call({Params params});
}
