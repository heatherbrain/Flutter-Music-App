import 'package:flutter/material.dart';
import 'package:music_app/models/music.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:music_app/providers/favorites_provider.dart';

class MusicLyrics extends ConsumerWidget {
  const MusicLyrics({
    super.key,
    required this.music,
  });

  final Music music;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteMusics = ref.watch(favoriteMusicProvider);

    final isFavorite = favoriteMusics.contains(music);
    return Scaffold(
      appBar: AppBar(
        title: Text(music.title),
        actions: [
          IconButton(
            onPressed: () {
              final wasAdedd = ref
                  .read(favoriteMusicProvider.notifier)
                  .toggleMusicFavoriteStatus(music);
              ScaffoldMessenger.of(context).clearSnackBars();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content:
                      Text(wasAdedd ? 'Favorited' : 'Removed from favorite'),
                ),
              );
            },
            icon: Icon(isFavorite ? Icons.star : Icons.star_border),
          )
        ],
      ),
      body: SingleChildScrollView(
        // Wrap the entire Column iFn SingleChildScrollView
        child: Column(
          children: [
            Image.network(
              music.imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 14),
            Text(
              music.title,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            const SizedBox(height: 14), // Add some spacing
            // Wrap the lyrics in another Column without Expanded
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  for (final lyric in music.lyrics)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        lyric,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Theme.of(context).colorScheme.onBackground,
                            ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
