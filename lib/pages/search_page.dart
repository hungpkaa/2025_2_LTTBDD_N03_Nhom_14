import 'package:flutter/material.dart';
import '../widgets/category_card.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController controller = TextEditingController();

  final List<String> allSongs = [
    "Blinding Lights",
    "Stay",
    "Levitating",
    "Peaches",
    "Shape of You",
    "Perfect",
    "Believer",
    "Counting Stars",
  ];

  List<String> suggestions = [];

  final List<String> trending = [
    "Taylor Swift",
    "Drake",
    "The Weeknd",
    "Ed Sheeran",
  ];

  void search(String text) {
    setState(() {
      suggestions = allSongs
          .where((song) => song.toLowerCase().contains(text.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          "Search",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          /// SEARCH BAR
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),

            child: TextField(
              controller: controller,

              onChanged: search,

              decoration: const InputDecoration(
                icon: Icon(Icons.search),
                hintText: "Artists, songs, or podcasts",
                border: InputBorder.none,
              ),
            ),
          ),

          const SizedBox(height: 20),

          /// SEARCH SUGGESTIONS
          if (controller.text.isNotEmpty)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Suggestions",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                ...suggestions.map(
                  (song) => ListTile(
                    leading: const Icon(Icons.music_note, color: Colors.white),
                    title: Text(
                      song,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),

          const SizedBox(height: 20),

          /// TRENDING SEARCHES
          const Text(
            "Trending Searches",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          ...trending.map(
            (item) => ListTile(
              leading: const Icon(Icons.trending_up, color: Colors.green),
              title: Text(item, style: const TextStyle(color: Colors.white)),
            ),
          ),

          const SizedBox(height: 20),

          /// GENRE GRID
          const Text(
            "Browse all",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),

          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,

            children: const [
              CategoryCard(title: "Pop", image: "assets/images/ab18.jpg"),
              CategoryCard(title: "Rock", image: "assets/images/ab16.jpg"),
              CategoryCard(title: "Jazz", image: "assets/images/ab15.jpg"),
              CategoryCard(title: "Hip Hop", image: "assets/images/ab19.jpg"),
              CategoryCard(title: "Indie", image: "assets/images/ab20.jpg"),
              CategoryCard(title: "Classical", image: "assets/images/ab17.jpg"),
            ],
          ),
          const SizedBox(height: 120),
        ],
      ),
    );
  }
}
