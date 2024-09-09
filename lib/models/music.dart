enum Popularity {
  mostPopular,
  popular,
  lessPopular,
}

class Music {
  const Music({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.lyrics,
    required this.artist,
    required this.duration,
    required this.popularity,
    required this.isHeartBroken,
    required this.isVibing,
  });

  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> lyrics;
  final String artist;
  final Duration duration;
  final Popularity popularity;
  final bool isHeartBroken;
  final bool isVibing;
}
