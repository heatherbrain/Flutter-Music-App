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
        body: Column(
          children: [
            Image.network(
              music.imageUrl,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              music.title,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            // for (final lyrics in music.lyrics)
            //   Text(data),
          ],
        ));
  }
}
