import 'package:flutter/material.dart';

class GroupInfoPage extends StatefulWidget {
  const GroupInfoPage({super.key});

  @override
  State<GroupInfoPage> createState() => _GroupInfoPageState();
}

class _GroupInfoPageState extends State<GroupInfoPage> {
  bool isEnglish = false;

  Map<String, Map<String, String>> text = {
    "vi": {
      "title": "Thông tin nhóm",
      "app": "Ứng dụng nghe nhạc",
      "members": "Thành viên",
      "leader": "Trưởng nhóm",
      "designer": "Thiết kế UI",
      "dev": "Lập trình Flutter",
    },
    "en": {
      "title": "Group Info",
      "app": "Music Streaming App",
      "members": "Members",
      "leader": "Leader",
      "designer": "UI Designer",
      "dev": "Flutter Developer",
    },
  };

  @override
  Widget build(BuildContext context) {
    final lang = isEnglish ? "en" : "vi";

    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        title: Text(text[lang]!["title"]!),

        actions: [
          IconButton(
            icon: const Icon(Icons.language),
            onPressed: () {
              setState(() {
                isEnglish = !isEnglish;
              });
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            /// HEADER
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),

              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff1DB954), Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),

              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.music_note,
                      size: 50,
                      color: Colors.black,
                    ),
                  ),

                  const SizedBox(height: 15),

                  Text(
                    text[lang]!["app"]!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            /// MEMBER TITLE
            Text(
              text[lang]!["members"]!,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            /// MEMBERS
            memberCard(
              "Vu Tien Hung",
              text[lang]!["leader"]!,
              "assets/images/ab12.jpg",
            ),

            memberCard(
              "Vu Tien Hung ",
              text[lang]!["designer"]!,
              "assets/images/ab13.jpg",
            ),

            memberCard(
              "Vu Tien Hung  ",
              text[lang]!["dev"]!,
              "assets/images/ab14.jpg",
            ),

            const SizedBox(height: 120),
          ],
        ),
      ),
    );
  }

  Widget memberCard(String name, String role, String image) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),

      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(12),
        ),

        child: ListTile(
          leading: CircleAvatar(radius: 25, backgroundImage: AssetImage(image)),

          title: Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),

          subtitle: Text(role, style: const TextStyle(color: Colors.grey)),

          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 16,
          ),
        ),
      ),
    );
  }
}
