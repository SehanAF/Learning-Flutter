// ignore_for_file: await_only_futures

import 'package:get_it/get_it.dart';
import 'package:myapp/data/repository/auth/auth_repository_impl.dart';
import 'package:myapp/data/sources/auth/auth_firebase_service.dart';
import 'package:myapp/domain/repository/auth/auth.dart';

final s1 = GetIt.instance;


/// Fungsi ini digunakan untuk menginisialisasi dependency (komponen-komponen) dari aplikasi.
///
/// Dalam fungsi ini, kita menggunakan pustaka `GetIt` untuk mendaftarkan [AuthFireBaseService] dan [AuthRepository] sebagai singleton (objek yang hanya ada satu).
/// Singleton memungkinkan untuk membuat objek secara global dan memperkenalkan objek tersebut ke seluruh aplikasi. Singleton memastikan bahwa kita hanya memiliki satu objek di dalam aplikasi.
///
/// Sebagai contoh, jika kita memiliki banyak halaman dalam aplikasi yang membutuhkan [AuthRepository], kita dapat mendaftarkan [AuthRepository] sebagai singleton agar kita hanya perlu membuat satu objek [AuthRepository] di seluruh aplikasi dan dapat mengaksesnya di mana saja.
Future<void> initializeDependencies() async {
  // Mendaftarkan [AuthFireBaseService] sebagai singleton
  // Kita menggunakan await karena fungsi `AuthFirebaseServiceImpl()` adalah asinkron
  s1.registerSingleton<AuthFireBaseService>(await AuthFirebaseServiceImpl());

  // Mendaftarkan [AuthRepository] sebagai singleton
  // Kita menggunakan [AuthRepositoryImpl] sebagai implementasi dari [AuthRepository]
  s1.registerSingleton<AuthRepository>(AuthRepositoryImpl());
}
