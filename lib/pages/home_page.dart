import 'package:flutter/material.dart';
import '../widgets/gradient_header.dart';
import '../widgets/album_list.dart';
import '../widgets/playlist_grid.dart';
import '../widgets/mini_player.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// MAIN CONTENT
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                GradientHeader(),

                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Albums",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),

                AlbumList(),

                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Playlists",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),

                PlaylistGrid(),

                /// để tránh mini player che nội dung
                SizedBox(height: 120),
              ],
            ),
          ),

          /// MINI PLAYER
          const Positioned(left: 0, right: 0, bottom: 0, child: MiniPlayer()),
        ],
      ),
    );
  }
}
