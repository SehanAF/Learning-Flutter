class AppURLs {
  static const String base =
      "https://firebasestorage.googleapis.com/v0/b/spotify-app0.appspot.com/o/covers%2F";
  static const String mediaAlt = "?alt=media";
  static String getSongImageURL(String artist, String title) {
    final fileName = "$artist - $title.jpg";
    final encodedFileName = Uri.encodeFull(fileName);
    return "$base$encodedFileName$mediaAlt";
  }
}
