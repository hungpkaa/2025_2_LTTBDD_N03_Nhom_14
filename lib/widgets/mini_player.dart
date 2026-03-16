import 'package:flutter/material.dart';
import '../models/song.dart';
import '../pages/player_page.dart';

class MiniPlayer extends StatefulWidget {
  const MiniPlayer({super.key});

  @override
  State<MiniPlayer> createState() => _MiniPlayerState();
}

class _MiniPlayerState extends State<MiniPlayer>
    with SingleTickerProviderStateMixin {
  bool isPlaying = false;
  double progress = 0;

  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat();
  }

  void togglePlay() {
    setState(() {
      isPlaying = !isPlaying;

      if (isPlaying) {
        controller.repeat();
      } else {
        controller.stop();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final song = Song.currentSong;

    if (song == null) return const SizedBox();

    return GestureDetector(
      onVerticalDragUpdate: (details) {
        if (details.delta.dy < -10) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const PlayerPage()),
          );
        }
      },

      child: Container(
        height: 70,
        color: Colors.grey[900],

        child: Column(
          children: [
            /// PROGRESS BAR
            LinearProgressIndicator(
              value: progress,
              minHeight: 3,
              backgroundColor: Colors.grey[800],
              color: const Color(0xff1DB954),
            ),

            Expanded(
              child: Row(
                children: [
                  const SizedBox(width: 10),

                  /// ALBUM IMAGE ROTATE
                  RotationTransition(
                    turns: controller,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.asset(
                        song.imageUrl,
                        width: 45,
                        height: 45,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  /// TITLE
                  Expanded(
                    child: Text(
                      song.title,
                      style: const TextStyle(color: Colors.white),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),

                  /// PLAY BUTTON
                  IconButton(
                    onPressed: togglePlay,
                    icon: Icon(
                      isPlaying ? Icons.pause : Icons.play_arrow,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(width: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
