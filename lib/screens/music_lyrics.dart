import 'package:flutter/material.dart';
import 'package:meals_app/models/music.dart';

class MusicLyrics extends StatelessWidget {
  const MusicLyrics({super.key, required this.music});

  final Music music;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(music.title),
      ),
      body: SingleChildScrollView(
        // Wrap the entire Column in SingleChildScrollView
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
