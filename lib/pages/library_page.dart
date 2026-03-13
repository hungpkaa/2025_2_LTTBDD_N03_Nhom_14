import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: CustomScrollView(
        slivers: [
          /// COLLAPSING HEADER
          SliverAppBar(
            backgroundColor: Colors.black,
            pinned: true,
            expandedHeight: 200,

            actions: const [
              Icon(Icons.search),
              SizedBox(width: 16),
              Icon(Icons.add),
              SizedBox(width: 16),
            ],

            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                "Your Library",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff1DB954), Colors.black],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),

                padding: const EdgeInsets.only(left: 16, bottom: 60),

                child: const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Music Collection",
                    style: TextStyle(color: Colors.white70, fontSize: 18),
                  ),
                ),
              ),
            ),
          ),

          /// PLAYLIST LIST
          SliverList(
            delegate: SliverChildListDelegate([
              _playlistItem(
                title: "Liked Songs",
                subtitle: "Playlist • 128 songs",
                gradient: const [Colors.purple, Colors.deepPurple],
              ),

              _playlistItem(
                title: "Acoustic Chill",
                subtitle: "Playlist",
                gradient: const [Colors.orange, Colors.deepOrange],
              ),

              _playlistItem(
                title: "90s Hits",
                subtitle: "Playlist",
                gradient: const [Colors.green, Colors.teal],
              ),

              _playlistItem(
                title: "Workout Mix",
                subtitle: "Playlist",
                gradient: const [Colors.blue, Colors.indigo],
              ),
              const SizedBox(height: 120),
            ]),
          ),
        ],
      ),
    );
  }

  /// PLAYLIST ITEM WITH GRADIENT
  static Widget _playlistItem({
    required String title,
    required String subtitle,
    required List<Color> gradient,
  }) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),

      leading: Container(
        width: 55,
        height: 55,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
            colors: gradient,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),

        child: const Icon(Icons.music_note, color: Colors.white),
      ),

      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),

      subtitle: Text(subtitle, style: const TextStyle(color: Colors.grey)),

      trailing: const Icon(Icons.more_vert, color: Colors.grey),
    );
  }
}
