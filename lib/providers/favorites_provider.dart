import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/models/music.dart';

class FavoritesNotifier extends StateNotifier<List<Music>> {
  FavoritesNotifier() : super([]);

  bool toggleMusicFavoriteStatus(Music music) {
    final musicIsFavorite = state.contains(music);
    if (musicIsFavorite) {
      state = state.where((m) => m.id != music.id).toList();
      return false;
    } else {
      state = [...state, music];
      return true;

    }
  }
}

final favoriteMusicProvider =
    StateNotifierProvider<FavoritesNotifier, List<Music>>((ref) {
  return FavoritesNotifier();
});
