// ignore_for_file: empty_constructor_bodies

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/domain/repository/usecases/song/get_news_songs.dart';
import 'package:myapp/presentation/home/bloc/news_songs_state.dart';
import 'package:myapp/service_locator.dart';

class NewsSongsCubit extends Cubit<NewsSongsState> {
  NewsSongsCubit() : super(NewsSongsLoading());

  /// Ambil data lagu terbaru dari Firebase Firestore.
  ///
  /// Fungsi ini akan mengembalikan sebuah [Future] yang berisi data lagu
  /// terbaru jika berhasil, atau sebuah [Failure] jika gagal.
  Future<void> getNewsSongs() async {
    /// Ambil data dari Firestore dengan menggunakan Usecase [GetNewsSongsUseCase]
    var returnedSongs = await s1<GetNewsSongsUseCase>().call();

    /// Jika terjadi kesalahan maka kembalikan sebuah [NewsSongsLoadFailure]
    /// untuk mengindikasikan bahwa data tidak berhasil diambil.
    /// Jika tidak terjadi kesalahan maka kembalikan sebuah [NewsSongsLoaded]
    /// dengan data yang diambil.
    returnedSongs.fold((l) {
      emit(NewsSongsLoadFailure());
    }, (data) {
      emit(
        NewsSongsLoaded(songs: data),
      );
    });
  }
}
