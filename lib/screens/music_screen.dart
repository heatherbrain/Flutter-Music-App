import 'package:flutter/material.dart';
import 'package:meals_app/models/music.dart';
import 'package:meals_app/screens/music_lyrics.dart';
import 'package:meals_app/widgets/music_item.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({
    super.key,
    this.title,
    required this.musicScreen,
    required this.onToggleFavorite,
  });

  final String? title;
  final List<Music> musicScreen;
    final void Function(Music music) onToggleFavorite;


  void selectMusic(BuildContext context, Music music) {
    Navigator.of(context).push(
      MaterialPageRoute(
          builder: (ctx) => MusicLyrics(
                music: music,
                onToggleFavorite: onToggleFavorite,
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content;

    if (musicScreen.isEmpty) {
      content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Nothing here!',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Try selecting the other',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
          ],
        ),
      );
    } else {
      content = ListView.builder(
        itemCount: musicScreen.length,
        itemBuilder: (ctx, index) => MusicItem(
          music: musicScreen[index],
          onSelectMusic: (music) {
            selectMusic(context, music);
          },
        ),
      );
    }

    if (title == null) {
      return content;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: content,
    );
  }
}
