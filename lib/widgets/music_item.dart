import 'package:flutter/material.dart';
import 'package:music_app/models/music.dart';
import 'package:transparent_image/transparent_image.dart';
 
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:music_app/providers/favorites_provider.dart';
 
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
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      child: InkWell(
        onTap: () => onSelectMusic(music),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              child: FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: NetworkImage(music.imageUrl),
                fit: BoxFit.cover,
                width: 80,
                height: 100,
              ),
            ),
            const SizedBox(width: 12),
            // Song details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 
                  const SizedBox(width: 8),
                  Text(
                    music.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    music.artist,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(
                        Icons.schedule,
                        color: Colors.grey[600],
                        size: 18,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        formatDuration(music.duration),
                        style: TextStyle(color: Colors.grey[600], fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            IconButton(
              icon: Icon(
                isFavorite ? Icons.star : Icons.star_border,
                color: isFavorite ? Colors.white : Colors.grey,
              ),
              onPressed: () {
                ref
                    .read(favoriteMusicProvider.notifier)
                    .toggleMusicFavoriteStatus(music);
              },
            ),
          ],
        ),
      ),
    );
  }
}