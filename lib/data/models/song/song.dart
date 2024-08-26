import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myapp/domain/entities/song/song.dart';

/// Kelas yang merepresentasikan model dari sebuah lagu.
/// 
/// Kelas ini memiliki 4 properti, yaitu:
/// - [title]: judul dari lagu
/// - [artist]: nama artis dari lagu
/// - [duration]: durasi dari lagu dalam satuan detik
/// - [releaseDate]: tanggal rilis dari lagu
class SongModel {
  /// Judul dari lagu, jika tidak ada maka nilainya null
  String? title;

  /// Nama artis dari lagu
  String? artist;

  /// Durasi dari lagu dalam satuan detik
  num? duration;

  /// Tanggal rilis dari lagu
  Timestamp? releaseDate;

  /// Konstruktor dari kelas ini
  /// 
  /// Konstruktor ini digunakan untuk membuat objek [SongModel] dengan
  /// memberikan nilai awal untuk properti-properti di atas.
  SongModel({
    required this.title,
    required this.artist,
    required this.duration,
    required this.releaseDate,
  });

  /// Konstruktor dari kelas ini dengan menggunakan data dari json
  /// 
  /// Konstruktor ini digunakan untuk membuat objek [SongModel] dari data json
  /// yang diberikan. Data json harus memiliki struktur yang sama dengan properti-properti
  /// di atas.
  SongModel.fromJson(Map<String, dynamic> data) {
    // Memberikan nilai awal untuk properti-properti di atas
    // berdasarkan data json yang diberikan
    title = data['title'];
    artist = data['artist'];
    duration = data['duration'];
    releaseDate = data['releaseDate'];
  }
}

extension SongModelX on SongModel {
  /// Mengembalikan objek [SongModel] dalam bentuk json
  SongEntity toEntitiy() {
    // Mengembalikan objek [SongModel] dalam bentuk json
    return SongEntity(
      title: title!,
      artist: artist!,
      duration: duration!,
      releaseDate: releaseDate!,
    );
  }
}