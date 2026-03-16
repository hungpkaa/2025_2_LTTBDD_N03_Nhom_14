# 🎵 Music App - Ứng dụng nghe nhạc Flutter

Music App là một ứng dụng nghe nhạc đơn giản được xây dựng bằng **Flutter**.
Ứng dụng mô phỏng giao diện của các ứng dụng nghe nhạc phổ biến như Spotify, giúp người học Flutter thực hành về thiết kế UI, quản lý widget và điều hướng giữa các màn hình.

---

# 📱 Chức năng của ứng dụng

Ứng dụng bao gồm các chức năng cơ bản:

- 🎧 Hiển thị danh sách album và playlist
- 🔎 Tìm kiếm bài hát
- 📚 Quản lý thư viện nhạc
- ▶️ Trình phát nhạc (Player Page)
- 🎵 Mini Player hiển thị ở mọi trang
- 📱 Điều hướng bằng Bottom Navigation Bar
- 🎨 Giao diện Dark Theme

---

# 🛠️ Công nghệ sử dụng

- **Flutter**
- **Dart**
- **Material Design**

---

# 📂 Cấu trúc thư mục project

Dự án được tổ chức theo cấu trúc sau:

```
lib
│
├── data
│   └── mock_data.dart
│
├── models
│   └── song.dart
│
├── pages
│   ├── group_info_page.dart
│   ├── home_page.dart
│   ├── library_page.dart
│   ├── main_page.dart
│   ├── player_page.dart
│   └── search_page.dart
│
├── theme
│   └── app_theme.dart
│
├── widgets
│   ├── album_card.dart
│   ├── album_list.dart
│   ├── category_card.dart
│   ├── gradient_header.dart
│   ├── mini_player.dart
│   ├── playlist_card.dart
│   └── playlist_grid.dart
│
└── main.dart
```

---

# 📌 Mô tả các thư mục

### data

Chứa dữ liệu giả (mock data) dùng để hiển thị danh sách bài hát và album trong ứng dụng.

### models

Chứa các **model dữ liệu** của ứng dụng.
Ví dụ:

- `song.dart`: định nghĩa cấu trúc dữ liệu của một bài hát.

### pages

Chứa các **màn hình chính của ứng dụng**:

- **Home Page** – hiển thị danh sách bài hát
- **Search Page** – tìm kiếm nhạc
- **Library Page** – thư viện nhạc
- **Player Page** – màn hình phát nhạc
- **Group Info Page** – thông tin nhóm

### widgets

Chứa các **widget tái sử dụng** trong nhiều màn hình:

- Album Card
- Playlist Card
- Mini Player
- Category Card
- Gradient Header

### theme

Chứa cấu hình **giao diện và màu sắc của ứng dụng**.

---

# 🚀 Cách chạy project

## 1. Clone project

```
https://github.com/hungpkaa/2025_2_LTTBDD_N03_Nhom_14
```

## 2. Di chuyển vào thư mục project

```
cd musicapp
```

## 3. Cài đặt thư viện

```
flutter pub get
```

## 4. Chạy ứng dụng

```
flutter run
```

---

# 📸 Giao diện ứng dụng

Bạn có thể thêm ảnh minh họa tại đây:

- Trang Home
- Trang Player
- Trang Library
- Mini Player

---

# 🎯 Mục tiêu của project

Project này giúp luyện tập các kỹ năng:

- Thiết kế giao diện Flutter
- Tổ chức cấu trúc project
- Sử dụng widget tùy chỉnh
- Điều hướng giữa các màn hình
- Tái sử dụng component UI

---

# 👨‍💻 Tác giả

Project được xây dựng nhằm mục đích **học tập và thực hành Flutter**.

---

# 📄 License

Dự án này được sử dụng cho mục đích học tập và nghiên cứu.
