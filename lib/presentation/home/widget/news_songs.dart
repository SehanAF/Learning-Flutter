// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/core/configs/constans/app_urls.dart';
import 'package:myapp/domain/entities/song/song.dart';
import 'package:myapp/presentation/home/bloc/news_songs_cubit.dart';
import 'package:myapp/presentation/home/bloc/news_songs_state.dart';

class NewsSongs extends StatelessWidget {
  const NewsSongs({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NewsSongsCubit()..getNewsSongs(),
      child: SizedBox(
          height: 200,
          child: BlocBuilder<NewsSongsCubit, NewsSongsState>(
            builder: (context, state) {
              if (state is NewsSongsLoading) {
                return Container(
                    alignment: Alignment.center,
                    child: CircularProgressIndicator());
              }

              if (state is NewsSongsLoaded) {
                return _songs(state.songs);
              }

              return const SizedBox();
            },
          )),
    );
  }

  Widget _songs(List<SongEntity> songs) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,

      itemCount: songs.length,

      separatorBuilder: (context, index) => const SizedBox(width: 14),

      /// The builder for each item in the list
      itemBuilder: (context, index) {
        return SizedBox(
          width: 160,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: NetworkImage(AppURLs.firestorage +
                          songs[index].artist +
                          " - " +
                          songs[index].title +
                          ".jpg" +
                          AppURLs.mediaAlt),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
