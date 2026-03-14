import '../models/song.dart';

List<Song> songs = [
  Song(
    title: "Chạy ngay đi ",
    artist: "Sơn Tùng M-TP",
    imageUrl: "assets/images/ab1.jpg",
  ),

  Song(title: "Bạc Phận", artist: "Jack 97", imageUrl: "assets/images/ab2.jpg"),

  Song(
    title: "Tháng năm ",
    artist: "Soobin",
    imageUrl: "assets/images/ab3.jpg",
  ),

  Song(
    title: "Chạm khẽ tim anh một chút thôi",
    artist: "Noo Phước Thịnh",
    imageUrl: "assets/images/ab4.jpg",
  ),

  Song(
    title: "Chạm khẽ tim anh một chút thôi",
    artist: "Noo Phước Thịnh",
    imageUrl: "assets/images/ab5.jpg",
  ),

  Song(
    title: "Chạm khẽ tim anh một chút thôi",
    artist: "Noo Phước Thịnh",
    imageUrl: "assets/images/ab6.jpg",
  ),

  Song(
    title: "Chạm khẽ tim anh một chút thôi",
    artist: "Noo Phước Thịnh",
    imageUrl: "assets/images/ab7.jpg",
  ),

  Song(
    title: "Chạm khẽ tim anh một chút thôi",
    artist: "Noo Phước Thịnh",
    imageUrl: "assets/images/ab1.jpg",
  ),
];

class Playlist {
  final String title;
  final String image;

  Playlist({required this.title, required this.image});
}

List<Playlist> playlists = [
  Playlist(title: "Top Hits", image: "assets/images/ab8.png"),
  Playlist(title: "Chill Vibes", image: "assets/images/ab9.jpg"),
  Playlist(title: "Hit Hop", image: "assets/images/ab10.jpg"),
  Playlist(title: "Daily Mix", image: "assets/images/ab11.jpg"),
];
