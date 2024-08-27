import 'package:dartz/dartz.dart';
import 'package:myapp/data/sources/songs/song_firebase_service.dart';
import 'package:myapp/domain/repository/song/song.dart';
import 'package:myapp/service_locator.dart';

class SongRepositoryImpl extends SongsRepository {
  @override

  /// Mengambil data lagu terbaru dari Firebase Firestore.
  ///
  /// Fungsi ini akan mengembalikan sebuah [Either] yang berisi data lagu,
  /// dimana [Either] adalah sebuah tipe data yang dapat menyimpan salah satu
  /// dari dua nilai, yaitu sebuah nilai [Left] yang berisi pesan error, atau
  /// sebuah nilai [Right] yang berisi data yang diharapkan.
  /// terbaru jika berhasil, atau sebuah [Failure] jika gagal.
  Future<Either> getNewsSongs() async {
    return await s1<SongFirebaseService>().getNewsSongs();
  }
}
