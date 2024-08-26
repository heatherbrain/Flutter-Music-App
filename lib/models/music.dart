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
  });

  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final String lyrics;
  final String artist;
  final Duration duration;
  final Popularity popularity;
  
}