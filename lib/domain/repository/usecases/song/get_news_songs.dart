import 'package:dartz/dartz.dart';
import 'package:myapp/core/usecase/usecase.dart';
import 'package:myapp/data/repository/song/song_repository_impl.dart';
import 'package:myapp/service_locator.dart';

/// Klas ini digunakan untuk mengambil data lagu terbaru dari Firebase Firestore.
/// Metode [call] akan memanggil metode [getNewsSongs] dari [SongRepositoryImpl]
/// yang akan mengembalikan data lagu dalam bentuk [Either]. Jika proses
/// mengambil data berhasil maka akan mengembalikan [Right] dengan data
/// lagu terbaru, jika gagal maka akan mengembalikan [Left] dengan pesan
/// error. Kita menggunakan [s1] untuk mengakses instance [SongRepositoryImpl]
/// yang sudah di register di [GetIt].
class GetNewsSongsUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    return await SongRepositoryImpl().getNewsSongs();
  }
}
