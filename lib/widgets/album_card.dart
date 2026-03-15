import 'package:flutter/material.dart';

class AlbumCard extends StatefulWidget {
  final String title;
  final String image;
  final VoidCallback onTap;

  const AlbumCard({
    super.key,
    required this.title,
    required this.image,
    required this.onTap,
  });

  @override
  State<AlbumCard> createState() => _AlbumCardState();
}

class _AlbumCardState extends State<AlbumCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,

      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 140,
        margin: const EdgeInsets.only(right: 14),

        transform: Matrix4.identity()..scale(isHover ? 1.05 : 1.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// ALBUM IMAGE
            MouseRegion(
              onEnter: (_) => setState(() => isHover = true),
              onExit: (_) => setState(() => isHover = false),

              child: Stack(
                children: [
                  /// IMAGE
                  ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child: Image.asset(
                      widget.image,
                      width: 140,
                      height: 140,
                      fit: BoxFit.cover,
                    ),
                  ),

                  /// GRADIENT OVERLAY
                  Container(
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      gradient: const LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        colors: [Colors.black54, Colors.transparent],
                      ),
                    ),
                  ),

                  /// PLAY BUTTON
                  Positioned(
                    right: 8,
                    bottom: 8,
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 200),
                      opacity: isHover ? 1 : 0,

                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff1DB954),
                        ),

                        child: const Padding(
                          padding: EdgeInsets.all(8),
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            /// TITLE
            Text(
              widget.title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),

            const SizedBox(height: 2),

            /// SUBTITLE
            const Text(
              "Album",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
