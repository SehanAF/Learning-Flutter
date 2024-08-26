import 'package:cloud_firestore/cloud_firestore.dart';

/// SongEntity adalah sebuah class yang merepresentasikan lagu.
/// Class ini memiliki empat properti, yaitu:
/// - title: judul lagu
/// - artist: nama artis yang menyanyikan lagu
/// - duration: lamanya lagu dalam detik
/// - releaseDate: tanggal rilis lagu
///
/// Kita menggunakan [Timestamp] untuk menyimpan tanggal rilis lagu karena
/// [Timestamp] adalah tipe data yang disediakan oleh Firebase yang dapat
/// menyimpan tanggal dan waktu.
///
/// Kita menggunakan [num] untuk menyimpan durasi lagu karena [num] adalah
/// tipe data yang dapat menyimpan angka bulat dan desimal. Kita menggunakan
/// [num] karena durasi lagu dapat berupa angka bulat atau desimal.
class SongEntity {
  final String title;
  final String artist;
  final num duration;
  final Timestamp releaseDate;

  /// Konstruktor untuk membuat objek [SongEntity]
  /// Kita menggunakan [required] untuk memastikan bahwa semua properti
  /// harus diisi.
  SongEntity({
    required this.title,
    required this.artist,
    required this.duration,
    required this.releaseDate,
  });
}
