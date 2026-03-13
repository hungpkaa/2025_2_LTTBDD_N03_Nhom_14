import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../models/song.dart';
import '../pages/player_page.dart';
import 'album_card.dart';

class AlbumList extends StatelessWidget {
  const AlbumList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: songs.length,
        itemBuilder: (context, index) {
          final song = songs[index];

          return AlbumCard(
            title: song.title,
            image: song.imageUrl,

            onTap: () {
              Song.currentSong = song;

              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const PlayerPage()),
              );
            },
          );
        },
      ),
    );
  }
}
