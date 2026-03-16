import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import '../models/song.dart';

class PlayerPage extends StatefulWidget {
  const PlayerPage({super.key});

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage>
    with SingleTickerProviderStateMixin {
  Color bgColor = Colors.black;

  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 20),
    )..repeat();

    _updateBackground();
  }

  Future<void> _updateBackground() async {
    final song = Song.currentSong;

    if (song == null) return;

    final palette = await PaletteGenerator.fromImageProvider(
      NetworkImage(song.imageUrl),
    );

    setState(() {
      bgColor = palette.dominantColor?.color ?? Colors.black;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final song = Song.currentSong;

    if (song == null) {
      return const Scaffold(body: Center(child: Text("No song selected")));
    }

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [bgColor, Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: SafeArea(
          child: Column(
            children: [
              /// TOP BAR
              Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                  const Spacer(),
                  const Text(
                    "Now Playing",
                    style: TextStyle(color: Colors.white),
                  ),
                  const Spacer(),
                  const Icon(Icons.more_vert, color: Colors.white),
                ],
              ),

              const SizedBox(height: 40),

              /// ROTATING ALBUM
              RotationTransition(
                turns: controller,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    song.imageUrl,
                    height: 300,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 40),

              /// SONG INFO
              Text(
                song.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              Text(song.artist, style: const TextStyle(color: Colors.grey)),

              const SizedBox(height: 40),

              /// PLAYER CONTROLS
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.shuffle, color: Colors.white54),

                  Icon(Icons.skip_previous, color: Colors.white, size: 40),

                  Icon(Icons.play_circle_fill, color: Colors.white, size: 70),

                  Icon(Icons.skip_next, color: Colors.white, size: 40),

                  Icon(Icons.repeat, color: Colors.white54),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
