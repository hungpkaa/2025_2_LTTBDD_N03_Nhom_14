import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import 'playlist_card.dart';

class PlaylistGrid extends StatelessWidget {
  const PlaylistGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),

      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),

        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,

          /// khoảng cách ngang
          crossAxisSpacing: 14,

          /// khoảng cách dọc
          mainAxisSpacing: 14,

          /// tỉ lệ card
          childAspectRatio: 1.2,
        ),

        itemCount: playlists.length,

        itemBuilder: (context, index) {
          final playlist = playlists[index];

          return PlaylistCard(title: playlist.title, image: playlist.image);
        },
      ),
    );
  }
}
