import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:myapp/data/models/song/song.dart';
import 'package:myapp/domain/entities/song/song.dart';

abstract class SongFirebaseService {
  Future<Either> getNewsSongs();
}

class SongFirebaseServiceImpl extends SongFirebaseService {
  /// Fungsi untuk mengambil data lagu terbaru dari Firestore
  /// Fungsi ini akan mengembalikan sebuah Either yang berisi list dari SongEntity
  /// atau sebuah String yang berisi pesan error jika terjadi kesalahan
  @override
  Future<Either> getNewsSongs() async {
    try {
      // Buat list untuk menyimpan data lagu
      List<SongEntity> songs = [];

      // Ambil data dari Firestore dengan menggunakan collection "Songs"
      // dan mengurutkan berdasarkan release date terbaru
      var data = await FirebaseFirestore.instance
          .collection("Songs")
          .orderBy('releaseDate', descending: true)
          .limit(3) // ambil hanya 3 data
          .get();

      // Looping setiap data yang diambil
      for (var element in data.docs) {
        // Buat objek SongModel dengan menggunakan data dari Firestore
        var songModel = SongModel.fromJson(element.data());

        // Tambahkan objek SongEntity ke dalam list
        songs.add(songModel.toEntitiy());
      }

      // Kembalikan list dari SongEntity
      return Right(songs);
    } catch (e) {
      // Kembalikan pesan error jika terjadi kesalahan
      return Left("An error occurred: $e");
    }
  }
}
