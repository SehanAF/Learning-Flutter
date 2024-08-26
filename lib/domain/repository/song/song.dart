import 'package:dartz/dartz.dart';

/// Kelas abstrak adalah kelas yang tidak dapat diinstansiasi secara langsung.
/// Kelas abstrak hanya dapat diwariskan oleh kelas lainnya dan harus di-override
/// oleh kelas yang mengimplementasikannya. Kelas abstrak biasanya digunakan untuk
/// mendefinisikan kontrak yang harus diikuti oleh kelas lainnya. Dalam hal ini,
/// kelas [SongsRepository] adalah kelas abstrak yang mendefinisikan kontrak
/// untuk operasi-operasi yang dapat dilakukan terhadap koleksi lagu. Kelas
/// lainnya dapat mengimplementasikan kelas ini untuk membuat implementasi
/// yang berbeda-beda.
  /// Digunakan untuk mengambil semua lagu yang ada di dalam koleksi.
abstract class SongsRepository {
  
  Future<Either> getNewsSongs();
}
