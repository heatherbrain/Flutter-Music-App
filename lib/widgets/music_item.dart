import 'package:flutter/material.dart';
import 'package:meals_app/models/music.dart';
import 'package:meals_app/widgets/music_item_trait.dart';
import 'package:transparent_image/transparent_image.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/providers/favorites_provider.dart';

String formatDuration(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, '0');
  String minutes = duration.inMinutes.toString();
  String seconds = twoDigits(duration.inSeconds.remainder(60));
  return '$minutes:$seconds';
}


class MusicItem extends ConsumerWidget {
  const MusicItem({
    super.key,
    required this.music,
    required this.onSelectMusic,
  });

  final Music music;
  final void Function(Music music) onSelectMusic;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
   final favoriteMusics = ref.watch(favoriteMusicProvider);

    final isFavorite = favoriteMusics.contains(music);

    return Card(
      margin: const EdgeInsets.all(12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      child: InkWell(
        onTap: () {onSelectMusic(music);},
        child: Stack(
          children: [
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(music.imageUrl),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black54,
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 44),
                child: Column(
                  children: [
                    Text(
                      music.title,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MusicItemTrait(
                          icon: Icons.schedule,
                          label: formatDuration(music.duration),
                        ),
                        const Spacer(),
                        const SizedBox(width: 12),
                        MusicItemTrait(icon: isFavorite ? Icons.star : Icons.star_border_outlined, label: music.artist),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
